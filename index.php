<?php
session_start();
require "config/database.php";
include "src/inc/header.php";


?>
<script>
  $(document).ready(function(){
    var blah = "View Attendance: To view attendance select date between 20/06/2022 - 24/06/2022";
    alert(blah);
});
</script>
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
    <div class="form-inline mb-5">
        <form method="POST">
            <input class="form-control" type="date" min="2022-06-20" name="date">
            <input class="btn btn-success" type="submit" name="view">
        </form>
    </div>
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <td>Student Name</td>
                <td>Day</td>
                <td>Attendance Status</td>
            </tr>
        </thead>
        <tbody>
            <?php
            if (isset($_POST['view'])) {
                $date = $_POST['date']; ?>
                <h2 class="text-center"> ATTENDANCE FOR <?php echo $date; ?> </h2>
                <?php
                $attendance_view = "SELECT a.id, a.status, a.date, s.name FROM attendance AS a LEFT JOIN students AS s ON S.id=a.student_id WHERE a.date= '$date' ORDER BY s.name";
                $result = $connectdb->query($attendance_view);
                if (mysqli_num_rows($result) > 0) {
                    while ($student = $result->fetch_assoc()) {
                ?>

                        <tr>
                            <td><?php echo $student['name']; ?></td>
                            <td><?php echo $student['date']; ?></td>
                            <td><?php echo $student['status']; ?></td>
                        </tr>
            <?php
                    }
                }
            }
            ?>
        </tbody>
    </table>
</div>

<?php
include "src/inc/footer.php";
?>