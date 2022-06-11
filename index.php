<?php

include("includes/header.php");

?>
<div class="row">
	<div class="col-md-12 clearfix">
		<h1>Gallery</h1>

		<?php

		$result = mysqli_query($con, "SELECT DISTINCT author_id, users.user_name FROM gallery JOIN users on users.user_id = gallery.author_id") or die(mysqli_error($con));
		$showAll = $_GET['authorid'];
		while ($row = mysqli_fetch_array($result)) {
			if (!isset($showAll)) {
				$username =  $row['user_name'];
				$user = $_GET['$username'];

				echo "<b>Uploaded By: $username</b>";
				$authorId =  $row['author_id'];

				$resultTwo = mysqli_query($con, "SELECT * FROM gallery where author_id = $authorId limit 4") or die(mysqli_error($con));
				echo "<br><br>";
				echo "<a name=\"showMore\" id=\"showMore\" href=\"index.php?authorid=$authorId\" class=\"btn btn-primary\">Show More</a>";
				echo "<br>";
				while ($row = mysqli_fetch_array($resultTwo)) {
					$filename = $row['filename'];
					$title =  $row['title'];
					$id =  $row['id'];
					echo "\n<div class=\"thumb\">";
					echo "\n\t<a href=\"display.php?id=$id\"><img src=\"images/thumbs-square/$filename\" class=\"img-thumbnail\"></a>";
					echo "<div class=\"thumb-title\">$title</div>";
					echo "\n</div>";
				}
			}
			echo "<br style=\"clear:both\"><br/><br/>";
		}

		if (isset($showAll)) {
			$resultFour = mysqli_query($con, "SELECT * FROM gallery where author_id = $showAll") or die(mysqli_error($con));
			$resultFive = mysqli_query($con, "SELECT user_name from users where user_id = $showAll") or die(mysqli_error($con));
			while ($row = mysqli_fetch_assoc($resultFive)) {
				$username =  $row['user_name'];
				echo "<b>All of $username's Photos</b>";
				echo "<br><br>";
			}

			echo "<a href=\"index.php\" class=\"btn btn-primary\">Go Back To The Gallery</a>";
			echo "<br>";
			while ($row = mysqli_fetch_assoc($resultFour)) {
				$filename = $row['filename'];
				$title = $row['title'];
				$id = $row['id'];
				echo "\n<div class=\"thumb\">";
				echo "\n\t<a href=\"display.php?id=$id\"><img src=\"images/thumbs-square/$filename\" class=\"img-thumbnail\"></a>";
				echo "<div class=\"thumb-title\">$title</div>";
				echo "\n</div>";
			}
			echo "<br style=\"clear:both\"><br/><br/>";
		}
		?>


		<!-- <br style="clear:both"> -->
	</div>

</div>

<?php

include("includes/footer.php");
?>