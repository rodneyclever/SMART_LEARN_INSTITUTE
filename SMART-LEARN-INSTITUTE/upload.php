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