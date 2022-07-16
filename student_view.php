<?php
session_start();
require "config/database.php";
include "src/inc/header.php";
?>
<div class="container">
    <?php
    if (isset($_SESSION['message']) && isset($_SESSION['errorstyle'])) { ?>
        <div class="alert alert-<?php echo $_SESSION['errostyle']?> alert-dismissible fade in">
            <strong><?php echo $_SESSION['message']?></strong>
        </div>
    <?php
    }
    unset($_SESSION['message']);
    unset($_SESSION['errorstyle']);
    ?>
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <td>S/N</td>
                <td>Student Name</td>
                <td>Gender</td>
                <td>Age</td>
                <td>Attendance</td>
            </tr>
        </thead>
        <tbody>
            <?php
            $liststudent = "SELECT * FROM students";
            $result = $connectdb->query($liststudent);
            if(mysqli_num_rows($result) > 0){
                while($student = $result->fetch_assoc()){
                    ?>
                
             <tr>
            <td><?php echo $student["id"]; ?> <input type="hidden" name="student_id[]" value="<?php echo $student["id"]; ?>"></td>
            <td><?php echo $student["name"]; ?></td>
            <td><?php echo $student["gender"]; ?></td>
            <td><?php echo $student["age"]; ?></td>
            <td><a href="student_attendance.php?id=<?php echo $student["id"]; ?>" class="btn btn-primary">VIEW</a></td>
             </tr>
             <?php
            }
             }
            ?>
        </tbody>
    </table>
</div>

<?php
include "src/inc/footer.php";
?>