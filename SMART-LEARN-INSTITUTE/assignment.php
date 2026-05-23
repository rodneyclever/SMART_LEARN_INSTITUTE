<?php
include("db.php");

$search = "";

if(isset($_GET['search'])){
    $search = $_GET['search'];
}

$query = "SELECT * FROM courses 
          WHERE course_name LIKE '%$search%'";

$result = mysqli_query($conn, $query);

?>

<!DOCTYPE html>
<html>
<head>

    <title>Courses</title>

    <link rel="stylesheet" href="./assets/css/assignments.css">

</head>

<body>

<!-- Particles Background -->
  <div id="particles-js"></div>

        <div class = "home-container">  

<div class="main-container">

    <h1 class="title">Available Assignments</h1>

    <!-- SEARCH FORM -->
    <form method="GET">

        <input type="text"
               name="search"
               placeholder="Search courses..."
               class="search-box">

        <button type="submit" class="search-btn">
            Search
        </button>

    </form>

    <!-- COURSE CARDS -->

    <div class="courses-container">

    <?php

    while($row = mysqli_fetch_assoc($result)){

    ?>

        <div class="course-card">

            <h2>
                <?php echo $row['course_name']; ?>
            </h2>

            <p>
                Instructor:
                <?php echo $row['instructor']; ?>
            </p>

            <p>
                Assignment:
                <?php echo $row['assignment_name']; ?>
            </p>

            <form action="upload.php"
                  method="POST"
                  enctype="multipart/form-data">

                <input type="hidden"
                       name="course"
                       value="<?php echo $row['course_name']; ?>">

                <input type="file"
                       name="assignment">

                <button type="submit" name = "upload">
                    Upload Assignment
                </button>

                <?php
if(isset($_POST['upload'])) {   // Better to check if form was submitted
    
    if(isset($_FILES['assignment']) && $_FILES['assignment']['error'] == 0) {
        
        $file = $_FILES['assignment']['name'];
        $tmp = $_FILES['assignment']['tmp_name'];
        
        // Optional: Basic security
        $allowed_types = ['pdf', 'doc', 'docx', 'jpg', 'png', 'zip'];
        $file_ext = strtolower(pathinfo($file, PATHINFO_EXTENSION));
        
        if(in_array($file_ext, $allowed_types)) {
            move_uploaded_file($tmp, "uploads/" . $file);
            echo "<p style='color: green;'>Assignment Uploaded Successfully!</p>";
            
        } else {
            echo "<p style='color: red;'>Invalid file type! Only PDF, DOC, JPG, PNG, ZIP allowed.</p>";
        }
        
    } else {
        // This is what you asked for
        echo "<p style='color: red;'>Please add work to upload!</p>";
    }
}
?>

            </form>

        </div>

    <?php
    }
    ?>

    </div>

</div>

<!-- Particles.js Script-->
  <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
  <script src="assets/js/particles-config.js"></script> 
</body>
</html>