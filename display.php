<?php
include("includes/mysql_connect.php");
$id = $_GET['id'];
if (!is_numeric($id)) { // just a catchall if the ID is messed with
	header("Location:index.php");
}
$result = mysqli_query($con, "SELECT * FROM gallery WHERE id = '$id'") or die(mysqli_error($con));
while ($row = mysqli_fetch_array($result)) {
	$pageTitle = $row['title'];
}

include("includes/header.php");


// NEXT PREVIOUS BUTTONS

//select * from foo where id = (select min(id) from foo where id > 4)
// NEXT/PREVIOUS LINKS
$next = mysqli_query($con, "SELECT id FROM gallery WHERE id = (select min(id) from gallery  where id > '$id') LIMIT 1");
while ($row = mysqli_fetch_array($next)) {
	$idNext =  $row['id'];
}
$prev = mysqli_query($con, "SELECT id FROM gallery  WHERE id = (select max(id) from gallery  where id < '$id') LIMIT 1");
while ($row = mysqli_fetch_array($prev)) {
	$idPrev =  $row['id'];
}

if ($idPrev) {
	$nextPrevButtons .=  " <a href=\"display.php?id=$idPrev\" class=\"btn btn-info btn-xs\">Previous</a> ";
} else {
	$nextPrevButtons .=  " <a href=\"\" class=\"btn btn-default btn-xs\" disabled>Previous</a> ";
}
if ($idNext) {
	$nextPrevButtons .= "<a href=\"display.php?id=$idNext\" class=\"btn btn-info btn-xs\">Next</a>";
} else {
	$nextPrevButtons .= "<a href=\"\" class=\"btn btn-default btn-xs\" disabled>Next</a>";
}





?>
<div class="row">
	<div class="col-md-12">

		<?php
		/*$id = $_GET['id'];*/

		$result = mysqli_query($con, "SELECT * FROM gallery WHERE id = '$id'") or die(mysqli_error($con));
		?>
		<?php while ($row = mysqli_fetch_array($result)) : ?>


			<h2 class="display-heading"><?php echo $row['title']; ?></h2>


			<div class="display-image-holder">
				<img src="images/display/<?php echo $row['filename'] ?>" class="display-image img-responsive">

			</div>
			<div class="display-info">

				<h3><?php echo $row['title']; ?></h3>

				<div class="text-primary display-description"><?php echo nl2br($row['description']) ?></div>

				<?php if ($row['emake']) : ?>
					<b>Camera Brand:</b> <?php echo $row['emake'] ?><br>
				<?php endif; ?>

				<?php if ($row['emodel']) : ?>
					<b>Camera Model:</b> <?php echo $row['emodel'] ?><br>
				<?php endif; ?>

				<?php if ($row['edate']) : ?>
					<?php
					$timedate = strtotime($row['edate']); // fixes niggly mysql to php date conversion problems.
					?>
					<b>Date:</b> <?php echo date("F j, Y", $timedate); ?><br>
				<?php endif; ?>


				<?php if ($row['eexposuretime']) : ?>
					<b>Exposure:</b> <?php echo $row['eexposuretime'] ?><br>
				<?php endif; ?>

				<?php if ($row['efnumber']) : ?>
					<b>F number:</b> <?php echo $row['efnumber'] ?><br>
				<?php endif; ?>

				<?php if ($row['eiso']) : ?>
					<b>ISO:</b> <?php echo $row['eiso'] ?><br>
				<?php endif; ?>



			</div>
			&nbsp;&nbsp;
			<a href="index.php" class="btn btn-primary">Go Back To The Gallery</a>

		<?php endwhile; ?>
	</div>
</div>
<?php

include("includes/footer.php");
?>