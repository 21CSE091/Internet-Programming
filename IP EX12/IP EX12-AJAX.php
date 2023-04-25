<!DOCTYPE html>
<html>
<head>
	<title>Movie Information</title>
</head>
<body>
    <h1>MOVIE DETAILS</h1>
    <form  method="GET" >
		<label for="movie_id">Enter Movie ID:</label>
		<input type="number" id="movie_id" name="id" required><br><br>
		<button type="submit">Get Movie Information</button><br><br>
	</form>
<?php
// Load the XML file
$xml = simplexml_load_file('movies.xml');

// Check if the movie ID is set
if (isset($_GET['id'])) {
    $movieID = $_GET['id'];
    
    // Find the movie with the given ID
    $movie = $xml->xpath("/movies/movie[id=$movieID]")[0];
    
    // Retrieve the movie information
    $title = $movie->title;
    $director = $movie->director;
    $year = $movie->year;
    $genre = $movie->genre;
    
    // Display the movie information
    echo '<table border="2">';
    echo '<tr><th>Title</th><td>'.$title.'</td></tr>';
    echo '<tr><th>Director</th><td>'.$director.'</td></tr>';
    echo '<tr><th>Year</th><td>'.$year.'</td></tr>';
    echo '<tr><th>Genre</th><td>'.$genre.'</td></tr>';
    echo '</table>';
}
?>

</body>
</html>