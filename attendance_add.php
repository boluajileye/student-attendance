<?php
session_start();
    require_once 'config/database.php';
    require "src/inc/header.php";
?>
<div class="container">
<form method="POST">
    <div class="form-inline">
    <input class="form-control" type="date" min="2022-06-20" name="date">
    <input class="btn btn-success" type="submit" name="view">
    </div>
    <h2>Attendance for <?php if(isset($_POST['view'])){echo $_POST['date']; }else{echo "which day?";}?> </h2>
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <th>S/N</th>
            <th>STUDENT NAME</th>
            <th>GENDER</th>
            <th>ATTENDANCE</th>
        </thead>
        
        <tbody>
            <?php
            if(isset($_POST['view'])){
                $date = $_POST['date'];
            $liststudent = "SELECT * FROM students";
            $result = $connectdb->query($liststudent);
            if(mysqli_num_rows($result) > 0){
                while($student = $result->fetch_assoc()){?>
                
             <tr>  
            <td><?php echo $student["id"]; ?> <input type="hidden" name="student_id[]" value="<?php echo $student["id"]; ?>"></td>
            <td><?php echo $student["name"]; ?></td>
            <td><?php echo $student["gender"]; ?></td>
            <td><input type="checkbox" name="attendance[]" value="present"> Present <input type="checkbox" name="attendance[]" value="absent"> Absent  <input class="form-control" type="hidden" name="date1[]" value="<?php echo $date; ?>"></td>
            
             </tr>
            <?php
            }
             }
            }
            ?>
        </tbody>
    </table>
    <input class="btn btn-success" type="submit" name="submit" value="submit">
</form>
</div>

<?php
    require "src/inc/footer.php";

    if(isset($_POST['submit'])){
        $date1 = $_POST['date1'];
        $student_id = $_POST['student_id'];
        $attendance = $_POST['attendance'];
        
        for ($i=0; $i < count($student_id); $i++) { 
        $sql = "INSERT INTO attendance (student_id, status, date) values
        ('$student_id[$i]', 
        '$attendance[$i]', '$date1[$i]')";
        $result = $connectdb->query($sql);
     
        }   if($result){
            $_SESSION['message'] = "Student Attendance added Successfully";
            $_SESSION['errorstyle'] = "success";
            header('location: index.php');
        }else{
            $_SESSION['message'] = "Student Attendance not Added";
            $_SESSION['errorstyle'] = "danger";
        }
    }
?>