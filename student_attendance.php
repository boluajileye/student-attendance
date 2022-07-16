<?php

use LDAP\Result;

require "config/database.php";
include "src/inc/header.php";

if(isset($_GET['id'])){
    $student_id = $_GET['id'];
}
?>
<div class="container">
    <?php
$single_student_attendance_view = "SELECT * FROM students WHERE id=$student_id";
                $result = $connectdb->query($single_student_attendance_view);
                while($student = mysqli_fetch_array($result)){
                    ?>
    <h2 class="text-center">Attendance of <?php echo$student['name'];?></h2>
    <?php
    }
    ?>
<table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <td>Day</td>
                <td>Attendance Status</td>
            </tr>
        </thead>
        <tbody>   
            <?php
                $single_attendance_view = "SELECT a.id, a.status, a.date, s.name FROM attendance AS a 
                                            LEFT JOIN students AS s ON S.id=a.student_id
                                            WHERE s.id=$student_id 
                                            ORDER BY a.date";
                $result = $connectdb->query($single_attendance_view);
                if(mysqli_num_rows($result) > 0){
                    while($student = $result->fetch_assoc()){
                        ?>
                
            <tr>
                <td><?php echo $student['date'];?></td>
                <td><?php if($student['status'] == "present"){
                    echo "<button type='button' class='btn btn-success'>Present</button>";
                    }
                    else{
                    echo "<button type='button' class='btn btn-danger'>Absent</button>";
                    };?>
                </td>
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