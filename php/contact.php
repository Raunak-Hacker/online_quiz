<?php
require 'db.php';

if (isset($_POST['save'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    $sql_query = "INSERT INTO contact (name,email,message)
	 VALUES ('$name','$email', '$message')";
    if (mysqli_query($conn, $sql_query)) {
?>
        <br><br>
        <style>
            .card {
                border-radius: 12px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.26);
                padding: 1rem;
                margin: 2rem auto;
                max-width: 40rem;
            }
        </style>
        <div class="card">
            <h1>Thank You, <span id="name"><?php echo $name; ?></span> for contacting us. </h1>
            <h3>Redirecting to home in: <span id="count">5</span></h3>
            <h4> <a href="../index.html">Go Home</a> </h4>
        </div>
        <script type="text/javascript">
            var count = 5;
            var interval = setInterval(function() {
                document.getElementById('count').innerHTML = count;
                count--;
                if (count === 0) {
                    clearInterval(interval);
                    window.location.href = '../index.html';
                }
            }, 1000);
        </script>

<?php
    } else {
        echo "Error: " . $sql . "" . mysqli_error($conn);
    }
    mysqli_close($conn);
}
