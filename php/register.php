<?php
require 'db.php';

if (isset($_POST['save'])) {
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $sql_query = "INSERT INTO users (fname,lname,password,email)
	 VALUES ('$fname', '$lname' ,'$password','$email')";
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
            <h1> Registered Successfully, <span id="name"><?php echo $fname; ?> <?php echo $lname; ?> </span> </h1>
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
            let name = document.querySelector("#name");
            localStorage.setItem('name', name.innerHTML);
        </script>

<?php
    } else {
        echo "Error: " . $sql . "" . mysqli_error($conn);
    }
    mysqli_close($conn);
}












?>