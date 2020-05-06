<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>STOCK</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Fontastic Custom icon font-->
<link rel="stylesheet" href="css/fontastic.css">
<!-- Google fonts - Poppins -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/style.blue.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body onload="load()">
	<div class="page">
		<!-- Main Navbar-->
		<header class="header">
			<nav class="navbar">
				<!-- Search Box-->
				<div class="search-box">
					<button class="dismiss">
						<i class="icon-close"></i>
					</button>
					<form id="searchForm" action="#" role="search">
						<input type="search" placeholder="What are you looking for..."
							class="form-control">
					</form>
				</div>
				<div class="container-fluid">
					<div
						class="navbar-holder d-flex align-items-center justify-content-between">
						<!-- Navbar Header-->
						<div class="navbar-header">
							<!-- Navbar Brand -->
							<a href="index.html"
								class="navbar-brand d-none d-sm-inline-block">
								<div class="brand-text d-none d-lg-inline-block">
									<span>STOCK </span><strong> MANAGEMENT</strong>
								</div>
								<div class="brand-text d-none d-sm-inline-block d-lg-none">
									<strong>BD</strong>
								</div>
							</a>
							<!-- Toggle Button-->
							<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
						</div>
						<!-- Navbar Menu -->
						<ul
							class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">


							<li class="nav-item"><a href="#" class="nav-link logout">
									<span class="d-none d-sm-inline">Logout</span><i
									class="fa fa-sign-out"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<nav class="side-navbar">
				<!-- Sidebar Header-->
				<div class="sidebar-header d-flex align-items-center">
					<div class="avatar">
						<img src="img/user.png" alt="..." class="img-fluid rounded-circle">
					</div>
					<div class="title">
						<h1 class="h4">SLIIT</h1>
						<p>PAF</p>
					</div>
				</div>
				<!-- Sidebar Navidation Menus-->
				<span class="heading">Main</span>
				<ul class="list-unstyled">
					<li class="active"><a href="tables.html"> <i
							class="icon-grid"></i>Stock
					</a></li>

				</ul>
			</nav>
			<div class="content-inner">
				<!-- Page Header-->
				<header class="page-header">
					<div class="container-fluid">
						<h2 class="no-margin-bottom">Stock</h2>
					</div>
				</header>
				<!-- Breadcrumb-->
				<div class="breadcrumb-holder container-fluid">
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
						<li class="breadcrumb-item active">Tables</li>
					</ul>
				</div>
				<section class="tables">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12 mb-5">
								<div class="card">
									<div class="card-header">
										<h6 class="text-uppercase mb-0">Table</h6>
									</div>
									<div class="card-body">
										<table class="table" id="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Stock ID</th>
													<th>Quantity</th>
													<th>Rec_Date</th>
													<th>Stock Name</th>
													<th>Exp_date</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>

							<div class="col-lg-12 mb-5">
								<div class="card">
									<div class="card-header">
										<div class="input-group mb-3">
											<input id="searchID" type="Number" class="form-control"
												placeholder="Search by ID" aria-describedby="basic-addon2">
											<div class="input-group-append">
												<button onclick="search()" class="btn btn-outline-secondary"
													type="button">Search</button>
											</div>
										</div>
									</div>
									<div class="card-body">
										<table class="table" id="idTable">
											<thead>
												<tr>
													<th>#</th>
													<th>Stock ID</th>
													<th>Quantity</th>
													<th>Rec_Date</th>
													<th>Stock Name</th>
													<th>Exp_date</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>
							</div>

							<div class="col-lg-12 mb-5">
								<div class="card">
									<div class="card-header">
										<h3 class="h6 text-uppercase mb-0">Form</h3>
									</div>
									<div class="card-body">
										<form class="form-horizontal" id="form">
											<div class="form-group row">
												<label class="col-md-3 form-control-label">Quantity</label>
												<div class="col-md-9">
													<input id="Stock_id" type="hidden" value="0"
														class="form-control form-control-success"> <input
														id="Quantity" type="number"
														class="form-control form-control-success">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-3 form-control-label">Rec_date</label>
												<div class="col-md-9">
													<input id="Rec_date" type="date"
														class="form-control form-control-warning">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-3 form-control-label">Stock_name</label>
												<div class="col-md-9">
													<input id="Stock_name" type="text"
														onkeypress="validateName()"
														class="form-control form-control-warning">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-3 form-control-label">Exp_date</label>
												<div class="col-md-9">
													<input id="Exp_date" type="date"
														class="form-control form-control-warning">
												</div>
											</div>
											<div class="form-group row">
												<div class="col-md-4 ml-auto">
													<button onclick="save()" type="button"
														class="btn btn-info btn-fill">Save</button>
												</div>
												<div class="col-md-4 ml-auto">
													<button type="reset" class="btn btn-info btn-fill">Reset</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>
				<!-- Page Footer-->
				<footer class="main-footer">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6">
								<p>SLIIT &copy; 2017-2020</p>
							</div>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="ajax/ajax.js"></script>
	<script src="sweetalert/sw.js"></script>
	<script src="ajax/jquery.3.2.1.min.js"></script>
	<script type="text/javascript">
		function getRow() {
			var table = document.getElementById('table');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("Stock_id").value = this.cells[1].textContent;
					document.getElementById("Quantity").value = this.cells[2].textContent;
					document.getElementById("Rec_date").value = this.cells[3].textContent;
					document.getElementById("Stock_name").value = this.cells[4].textContent;
					document.getElementById("Exp_date").value = this.cells[5].textContent;
				};
			}
		}

		function getRowSearch() {
			var table = document.getElementById('idTable');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("Stock_id").value = this.cells[1].textContent;
					document.getElementById("Quantity").value = this.cells[2].textContent;
					document.getElementById("Rec_date").value = this.cells[3].textContent;
					document.getElementById("Stock_name").value = this.cells[4].textContent;
					document.getElementById("Exp_date").value = this.cells[5].textContent;
				};
			}
		}

		function getID() {
			var table = document.getElementById('table');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("Stock_id").value = this.cells[1].textContent;
				};
			}
		}

		function getIDserch() {
			var table = document.getElementById('idTable');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("Stock_id").value = this.cells[1].textContent;
				};
			}
		}

		function resetForm() {
			document.getElementById("Stock_id").value = "0";
			document.getElementById("Quantity").value = "";
			document.getElementById("Rec_date").value = "";
			document.getElementById("Stock_name").value = "";
			document.getElementById("Exp_date").value = "";
		}

		function save() {
			var Stock_id = $('#Stock_id').val();
			Stock_id = parseInt(Stock_id);
			if (Stock_id === 0) {
				if (ValidInput()) {
					$
							.ajax({
								url : 'http://localhost:8080/HelthCare/webresources/stockResources/stock',
								method : 'POST',
								headers : {
									"Content-Type" : "application/json"
								},
								data : getJSON(),
								success : function(data) {
									$("#idTable").find("tr:gt(0)").remove();
									$("#table").find("tr:gt(0)").remove();
									load();
									resetForm();
									alert(data);
								},
								error : function(jqXHR, exception) {
									alert("error");
								}
							});
				} else {
					alert("Fill form");
				}
			} else {
				if (ValidInput()) {
					$
							.ajax({
								url : 'http://localhost:8080/HelthCare/webresources/stockResources/stock',
								method : 'PUT',
								headers : {
									"Content-Type" : "application/json"
								},
								data : getJSON(),
								success : function(data) {
									$("#idTable").find("tr:gt(0)").remove();
									$("#table").find("tr:gt(0)").remove();
									load();
									resetForm();
									alert(data);
								},
								error : function(jqXHR, exception) {
									alert("error");
								}
							});
				} else {
					alert("Fill form");
				}
			}
		}

		function delet() {
			getID();
			swal({
                title: "Are you sure?",
                text: "Do you realy want to Delete this?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'http://localhost:8080/HelthCare/webresources/stockResources/stock/'+$('#Stock_id').val(),
                                method: 'DELETE',
                                success: function (resultText) {
                                    $("#table").find("tr:gt(0)").remove();
                                    $("#idTable").find("tr:gt(0)").remove();
                                    
                                    load();
                                    swal("Deleted!", {
                                        icon: "success",
                                    });
                                },
                                error: function (jqXHR, exception) {
                                    swal("fail");
                                }
                            });
                        } else {
                            swal("Safe!");
                        }
                    });
		}

		function deletSearch() {
			getIDserch();
			swal({
                title: "Are you sure?",
                text: "Do you realy want to Delete this?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'http://localhost:8080/HelthCare/webresources/stockResources/stock/'+$('#Stock_id').val(),
                                method: 'DELETE',
                                success: function (resultText) {
                                    $("#table").find("tr:gt(0)").remove();
                                    $("#idTable").find("tr:gt(0)").remove();
                                    
                                    load();
                                    swal("Deleted!", {
                                        icon: "success",
                                    });
                                },
                                error: function (jqXHR, exception) {
                                    swal("fail");
                                }
                            });
                        } else {
                            swal("Safe!");
                        }
                    });
		}

		function load() {
			$
					.ajax({
						url : 'http://localhost:8080/HelthCare/webresources/stockResources/stocks',
						method : 'GET',
						headers : {
							Accept : "application/json",
							"Content-Type" : "application/json"
						},
						success : function(data, textStatus, errorThrown) {
							console.log(data);
							var items = [];
							$
									.each(
											data.stockModel,
											function(key, val) {
												var index = key + 1;
												items.push("<tr>");
												items.push("<td>" + index
														+ "</td>");
												items.push("<td>"
														+ val.stock_id
														+ "</td>");
												items.push("<td>"
														+ val.quantity
														+ "</td>");
												items.push("<td>"
														+ val.rec_date
														+ "</td>");
												items.push("<td>"
														+ val.stock_name
														+ "</td>");
												items.push("<td>"
														+ val.exp_date
														+ "</td>");
												items
														.push("<td><button onclick='getRow()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
												items
														.push("<td><button onclick='delet()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
												items.push("</tr>");
											});
							$("<tbody/>", {
								html : items.join("")
							}).appendTo("#table");
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("Ajax request fail");
						},
						timeout : 120000,
					});
		}

		function getJSON() {
			return JSON.stringify({
				"stock_id" : $('#Stock_id').val(),
				"quantity" : $('#Quantity').val(),
				"rec_date" : $('#Rec_date').val(),
				"stock_name" : $('#Stock_name').val(),
				"exp_date" : $('#Exp_date').val(),
			});
		}

		function ValidInput() {
			var Stock_id = $('#Stock_id').val();
			var Quantity = $('#Quantity').val();
			var Rec_date = $('#Rec_date').val();
			var Stock_name = $('#Stock_name').val();
			var Exp_date = $('#Exp_date').val();
			if (Stock_id === "" || Quantity === "" || Rec_date === ""
					|| Stock_name === "" || Exp_date === "") {
				return false;
			} else {
				return true;
			}
			return true;
		}
		function validateName(evt) {
            var theEvent = evt || window.event;
            // Handle paste
            if (theEvent.type === 'paste') {
                key = event.clipboardData.getData('text/plain');
            } else {
                // Handle key press
                var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode(key);
            }
            var regex = /^[a-zA-Z\s]+$/;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault)
                    theEvent.preventDefault();
            }

        }

		function search() {
			var searchID = $('#searchID').val();
			if (searchID === "") {
				alert("Please Enter ID")
			} else {
				$
						.ajax({
							url : 'http://localhost:8080/HelthCare/webresources/stockResources/stock/'+searchID,
							method : 'GET',
							headers : {
								Accept : "application/json",
								"Content-Type" : "application/json"
							},
							success : function(data, textStatus, errorThrown) {
								$("#idTable").find("tr:gt(0)").remove();
								var items = [];
								items.push("<tr>");
								items.push("<td>" + 1 + "</td>");
								items.push("<td>" + data.stock_id + "</td>");
								items.push("<td>" + data.quantity + "</td>");
								items.push("<td>" + data.rec_date + "</td>");
								items.push("<td>" + data.stock_name + "</td>");
								items.push("<td>" + data.exp_date + "</td>");
								items
										.push("<td><button onclick='getRowSearch()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
								items
										.push("<td><button onclick='deletSearch()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
								items.push("</tr>");
								$("<tbody/>", {
									html : items.join("")
								}).appendTo("#idTable");
							},
							error : function(jqXHR, textStatus, errorThrown) {
								alert("Ajax request fail");
							},
							timeout : 120000,
						});
			}
		}
	</script>

</body>
</html>