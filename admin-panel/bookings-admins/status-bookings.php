<?php require "../layouts/header.php"; ?>
<?php require "../../config/config.php"; ?>

<?php 
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    if (isset($_POST['submit'])) {
        if (isset($_POST['status'])) { // 
            $status = $_POST['status'];

            // Prepare the SQL update query
            $update = $conn->prepare("UPDATE bookings SET status = :status WHERE id = :id");
            $update->execute([
                ":status" => $status,
                ":id" => $id
            ]);

            // Redirect after update
            header("Location: show-bookings.php");
            exit(); // Ensure no further code is executed after redirect
        } else {
            echo "<script>alert('Please choose a status.');</script>";
        }
    }
}
?>

<div class="row">
    <div class="col">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title mb-5 d-inline">Update Status</h5>
                <form method="POST" action="status-bookings.php?id=<?php echo $id; ?>" enctype="multipart/form-data">
                    <select name="status" style="margin-top: 15px;" class="form-control">
                        <option value="">Choose Status</option> <!-- Default empty option -->
                        <option value="Pending">Pending</option>
                        <option value="Confirmed">Confirmed</option>
                        <option value="Canceled">Canceled</option>
                        <option value="Done">Done</option>
                    </select>

                    <!-- Submit button -->
                    <button style="margin-top: 10px;" type="submit" name="submit" class="btn btn-primary mb-4 text-center">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>

<?php require "../layouts/footer.php"; ?>
