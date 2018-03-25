<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Hitit Proje</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Anasayfa</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Iller
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/">Il Listele</a></li>
          <li><a href="/yeniil">Il Ekle</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Ilçeler
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/ilceler">Ilçe Listele</a></li>
          <li><a href="/yeniilce">Ilçe Ekle</a></li>
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mahalleler
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/mahalleler">Mahalle Listele</a></li>
          <li><a href="/yenimahalle">Mahalle Ekle</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
  
<div class="container">
	         
	<c:choose>
		<c:when test="${mode == 'IL_LISTELE'}">
			<div class="container">
				<div class="panel panel-default">
			    	<div class="panel-heading"><h2>Iller</h2></div>
			    		<div class="panel-body">
					    	<table class="table table-striped">
								    <thead>
								      <tr>
								        <th>No</th>
								        <th>Ad</th>
								        <th>Bölge</th>
								        <th>Nüfus</th>
								        <th>Düzenle</th>
								        <th>Sil</th>
								      </tr>
								    </thead>
								    <tbody>
								    	<c:forEach var ="il" items="${iller}">
								    		<tr>
								    			<td>${il.no}</td>
								    			<td>${il.ad}</td>
								    			<td>${il.bolge}</td>
								    			<td>${il.nufus}</td>
								    			<td>
								    				<a href = "ilduzenle?no=${il.no}">
								    					<div class = "glyphicon glyphicon-pencil"></div>
								    				</a>
								    			</td>
								    			<td>
								    				<a href = "ilsil?no=${il.no}">
								    					<div class = "glyphicon glyphicon-trash"></div>
								    				</a>
								    			</td>
								    		</tr>
								    	</c:forEach>	
								    </tbody>
							</table>
			    		</div>
			  		</div>
			</div>
		</c:when>
		
		<c:when test="${mode == 'IL_DUZENLE'}">
			<div class="container">
				<div class="panel panel-default">
				<div class="panel-heading"><h3>Il Düzenle</h3></div>
			    	<div class="panel-body">
						<form action = "ilkaydet" method = "post">
							<div class="form-group">
						    	<label for="no">No :</label>
						    	<input type="text" class="form-control" value = "${il.no}" name = "no" id="no">
						  	</div>
						  	<div class="form-group">
						    	<label for="ad">Ad :</label>
						    	<input type="text" class="form-control" value = "${il.ad}" name = "ad" id="ad">
						  	</div>
						 	<div class="form-group">
						    	<label for="bolge">Bölge :</label>
						    	<input type="text" class="form-control" value = "${il.bolge}" name = "bolge" id="bolge">
						  	</div>
						  	<div class="form-group">
						    	<label for="nufus">Nüfus :</label>
						    	<input type="text" class="form-control" value = "${il.nufus}" name = "nufus" id="nufus">
						  	</div>
						  	<a href="/" class="btn btn-default" role="button">Iptal</a>
						  	<button type="submit" class="btn btn-default">Kaydet</button>
						</form>
					</div>
				</div>
			</div>
			
			<div class="container">
				<div class="panel panel-default">
			    	<div class="panel-heading"><h3>Ilceleri</h3></div>
			    		<div class="panel-body">
							<table class="table table-striped">
							    <thead>
							      <tr>
							        <th>No</th>
							        <th>Ad</th>
							        <th>Il No</th>
							        <th>Nüfus</th>
							        <th>Düzenle</th>
							        <th>Sil</th>
							      </tr>
							    </thead>
							    <tbody>
							    	<c:forEach var ="ilce" items="${ilceleri}">
							    		<tr>
							    			<td>${ilce.no}</td>
							    			<td>${ilce.ad}</td>
							    			<td>${ilce.ilNo}</td>
							    			<td>${ilce.nufus}</td>
							    			<td>
							    				<a href = "ilceduzenle?no=${ilce.no}">
							    					<div class = "glyphicon glyphicon-pencil"></div>
							    				</a>
							    			</td>
							    			<td>
							    				<a href = "ilcesil?no=${ilce.no}">
							    					<div class = "glyphicon glyphicon-trash"></div>
							    				</a>
							    			</td>
							    		</tr>
							    	</c:forEach>	
							    </tbody>
							</table>
					</div>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode == 'IL_YENI'}">
			<div class="container">
				<div class="panel panel-default">
					<div class="panel-heading"><h2>Yeni Il Ekle</h2></div>
			    	<div class="panel-body">
						<form action = "ilkaydet" method = "post">
							<div class="form-group">
						    	<label for="no">No :</label>
						    	<input type="text" class="form-control" value = "${il.no}" name = "no" id="no">
						  	</div>
						  	<div class="form-group">
						    	<label for="ad">Ad :</label>
						    	<input type="text" class="form-control" value = "${il.ad}" name = "ad" id="ad">
						  	</div>
						 	<div class="form-group">
						    	<label for="bolge">Bölge :</label>
						    	<input type="text" class="form-control" value = "${il.bolge}" name = "bolge" id="bolge">
						  	</div>
						  	<div class="form-group">
						    	<label for="nufus">Nüfus :</label>
						    	<input type="text" class="form-control" value = "${il.nufus}" name = "nufus" id="nufus">
						  	</div>
						  	<a href="/" class="btn btn-default" role="button">Iptal</a>
						  	<button type="submit" class="btn btn-default">Kaydet</button>
						</form>
					</div>
				</div>
			</div>			
	    </c:when>
		
		<c:when test="${mode == 'ILCE_LISTELE'}">
			<div class="container">
				<div class="panel panel-default">
					<div class="panel-heading"><h2>Ilçeler</h2></div>
			    	<div class="panel-body">
						<table class="table table-striped">
						    <thead>
						      <tr>
						        <th>No</th>
						        <th>Ad</th>
						        <th>Il No</th>
						        <th>Nüfus</th>
						        <th>Düzenle</th>
						        <th>Sil</th>
						      </tr>
						    </thead>
						    <tbody>
						    	<c:forEach var ="ilce" items="${ilceler}">
						    		<tr>
						    			<td>${ilce.no}</td>
						    			<td>${ilce.ad}</td>
						    			<td>${ilce.ilNo}</td>
						    			<td>${ilce.nufus}</td>
						    			<td>
						    				<a href = "ilceduzenle?no=${ilce.no}">
						    					<div class = "glyphicon glyphicon-pencil"></div>
						    				</a>
						    			</td>
						    			<td>
						    				<a href = "ilcesil?no=${ilce.no}">
						    					<div class = "glyphicon glyphicon-trash"></div>
						    				</a>
						    			</td>
						    		</tr>
						    	</c:forEach>	
						    </tbody>
						</table>	
					</div>
				</div>
			</div>			
		</c:when>
		
		<c:when test="${mode == 'ILCE_DUZENLE'}">
			<div class="container">
				<div class="panel panel-default">
				<div class="panel-heading"><h3>Ilçe Düzenle</h3></div>
			    	<div class="panel-body">
						<form action = "ilcekaydet" method = "post">
							<div class="form-group">
						    	<label for="no">No :</label>
						    	<input type="text" class="form-control" value = "${ilce.no}" name = "no" id="no">
						  	</div>
						  	<div class="form-group">
						    	<label for="ad">Ad :</label>
						    	<input type="text" class="form-control" value = "${ilce.ad}" name = "ad" id="ad">
						  	</div>
						 	<div class="form-group">
						    	<label for="ilNo">Il No :</label>
						    	<input type="text" class="form-control" value = "${ilce.ilNo}" name = "ilNo" id="ilNo">
						  	</div>
						  	<div class="form-group">
						    	<label for="nufus">Nüfus :</label>
						    	<input type="text" class="form-control" value = "${ilce.nufus}" name = "nufus" id="nufus">
						  	</div>
						  	<a href="/ilceler" class="btn btn-default" role="button">Iptal</a>
						  	<button type="submit" class="btn btn-default">Kaydet</button>
						</form>
					</div>
				</div>
			</div>		
			
			<div class="container">
				<div class="panel panel-default">
			    	<div class="panel-heading"><h3>Mahalleleri</h3></div>
			    		<div class="panel-body">
							<table class="table table-striped">
							    <thead>
							      <tr>
							        <th>No</th>
						        	<th>Ad</th>
						        	<th>Ilçe No</th>
						        	<th>Hane Sayisi</th>
						        	<th>Nüfus</th>
						        	<th>Düzenle</th>
						        	<th>Sil</th>
							      </tr>
							    </thead>
							    <tbody>
							    	<c:forEach var ="mahalle" items="${mahalleleri}">
							    		<tr>
							    			<td>${mahalle.no}</td>
						    				<td>${mahalle.ad}</td>
						    				<td>${mahalle.ilceNo}</td>
						    				<td>${mahalle.haneSayisi}</td>
						    				<td>${mahalle.nufus}</td>
							    			<td>
							    				<a href = "mahalleduzenle?no=${mahalle.no}">
							    					<div class = "glyphicon glyphicon-pencil"></div>
							    				</a>
							    			</td>
							    			<td>
							    				<a href = "mahallesil?no=${mahalle.no}">
							    					<div class = "glyphicon glyphicon-trash"></div>
							    				</a>
							    			</td>
							    		</tr>
							    	</c:forEach>	
							    </tbody>
							</table>
					</div>
				</div>
			</div>	
		</c:when>
		
		<c:when test="${mode == 'ILCE_YENI'}">
			<div class="container">
				<div class="panel panel-default">
					<div class="panel-heading"><h2>Yeni Ilçe Ekle</h2></div>
			    	<div class="panel-body">
						<form action = "ilcekaydet" method = "post">
							<div class="form-group">
						    	<label for="no">No :</label>
						    	<input type="text" class="form-control" value = "${ilce.no}" name = "no" id="no">
						  	</div>
						  	<div class="form-group">
						    	<label for="ad">Ad :</label>
						    	<input type="text" class="form-control" value = "${ilce.ad}" name = "ad" id="ad">
						  	</div>
						 	<div class="form-group">
						    	<label for="ilNo">Il No :</label>
						    	<input type="text" class="form-control" value = "${ilce.ilNo}" name = "ilNo" id="ilNo">
						  	</div>
						  	<div class="form-group">
						    	<label for="nufus">Nüfus :</label>
						    	<input type="text" class="form-control" value = "${ilce.nufus}" name = "nufus" id="nufus">
						  	</div>
						  	<a href="/ilceler" class="btn btn-default" role="button">Iptal</a>
						  	<button type="submit" class="btn btn-default">Kaydet</button>
						</form>
					</div>
				</div>
			</div>			
	    </c:when>
		
		<c:when test="${mode == 'MAHALLE_LISTELE'}">
			<div class="container">
				<div class="panel panel-default">
					<div class="panel-heading"><h2>Mahalleler</h2></div>
			    	<div class="panel-body">
						<table class="table table-striped">
						    <thead>
						      <tr>
						        <th>No</th>
						        <th>Ad</th>
						        <th>Ilçe No</th>
						        <th>Hane Sayisi</th>
						        <th>Nüfus</th>
						        <th>Düzenle</th>
						        <th>Sil</th>
						      </tr>
						    </thead>
						    <tbody>
						    	<c:forEach var ="mahalle" items="${mahalleler}">
						    		<tr>
						    			<td>${mahalle.no}</td>
						    			<td>${mahalle.ad}</td>
						    			<td>${mahalle.ilceNo}</td>
						    			<td>${mahalle.haneSayisi}</td>
						    			<td>${mahalle.nufus}</td>
						    			<td>
						    				<a href = "mahalleduzenle?no=${mahalle.no}">
						    					<div class = "glyphicon glyphicon-pencil"></div>
						    				</a>
						    			</td>
						    			<td>
						    				<a href = "mahallesil?no=${mahalle.no}">
						    					<div class = "glyphicon glyphicon-trash"></div>
						    				</a>
						    			</td>
						    		</tr>
						    	</c:forEach>	
						    </tbody>
						</table>	
					</div>
				</div>
			</div>			
		</c:when>
		
		<c:when test="${mode == 'MAHALLE_DUZENLE'}">
			<div class="container">
				<div class="panel panel-default">
				<div class="panel-heading"><h3>Mahalle Düzenle</h3></div>
			    	<div class="panel-body">
						<form action = "mahallekaydet" method = "post">
							<div class="form-group">
						    	<label for="no">No :</label>
						    	<input type="text" class="form-control" value = "${mahalle.no}" name = "no" id="no">
						  	</div>
						  	<div class="form-group">
						    	<label for="ad">Ad :</label>
						    	<input type="text" class="form-control" value = "${mahalle.ad}" name = "ad" id="ad">
						  	</div>
						 	<div class="form-group">
						    	<label for="ilceNo">Ilçe No :</label>
						    	<input type="text" class="form-control" value = "${mahalle.ilceNo}" name = "ilceNo" id="ilceNo">
						  	</div>
						  	<div class="form-group">
						    	<label for="haneSayisi">Hane Sayisi :</label>
						    	<input type="text" class="form-control" value = "${mahalle.haneSayisi}" name = "haneSayisi" id="haneSayisi">
						  	</div>
						  	<div class="form-group">
						    	<label for="nufus">Nüfus :</label>
						    	<input type="text" class="form-control" value = "${mahalle.nufus}" name = "nufus" id="nufus">
						  	</div>
						  	<a href="/mahalleler" class="btn btn-default" role="button">Iptal</a>
						  	<button type="submit" class="btn btn-default">Kaydet</button>
						</form>
					</div>
				</div>
			</div>			
		</c:when>
		
		<c:when test="${mode == 'MAHALLE_YENI'}">
			<div class="container">
				<div class="panel panel-default">
				<div class="panel-heading"><h2>Yeni Mahalle Ekle</h2></div>
			    	<div class="panel-body">
						<form action = "mahallekaydet" method = "post">
							<div class="form-group">
						    	<label for="no">No :</label>
						    	<input type="text" class="form-control" value = "${mahalle.no}" name = "no" id="no">
						  	</div>
						  	<div class="form-group">
						    	<label for="ad">Ad :</label>
						    	<input type="text" class="form-control" value = "${mahalle.ad}" name = "ad" id="ad">
						  	</div>
						 	<div class="form-group">
						    	<label for="ilceNo">Ilçe No :</label>
						    	<input type="text" class="form-control" value = "${mahalle.ilceNo}" name = "ilceNo" id="ilceNo">
						  	</div>
						  	<div class="form-group">
						    	<label for="haneSayisi">Hane Sayisi :</label>
						    	<input type="text" class="form-control" value = "${mahalle.haneSayisi}" name = "haneSayisi" id="haneSayisi">
						  	</div>
						  	<div class="form-group">
						    	<label for="nufus">Nüfus :</label>
						    	<input type="text" class="form-control" value = "${mahalle.nufus}" name = "nufus" id="nufus">
						  	</div>
						  	<a href="/mahalleler" class="btn btn-default" role="button">Iptal</a>
						  	<button type="submit" class="btn btn-default">Kaydet</button>
						</form>
					</div>
				</div>
			</div>			
		</c:when>
		
	</c:choose> 
	
</div>

</body>
</html>
