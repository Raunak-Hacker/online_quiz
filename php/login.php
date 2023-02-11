<?php
require 'db.php';
session_start();
if (isset($_POST['save'])) {
    $password = $_POST['password'];
    $email = $_POST['email'];
    $sql_query = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
    $date = "UPDATE users SET last_login = NOW() WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($conn, $sql_query);
    if ((mysqli_num_rows($result) > 0) && mysqli_query($conn, $date)) {
        $_SESSION['email'] = $email;
        $row = mysqli_fetch_assoc($result);
        $fname = $row['fname'];
        $lname = $row['lname'];
?>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                .card {
                    border-radius: 12px;
                    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.26);
                    padding: 1rem;
                    margin: 2rem auto;
                    max-width: 40rem;
                }
            </style>
            <title>Logged</title>
        </head>

        <body>
            <br><br>

            <div class="card">
                <h1> Logged In Successfully, <span id="name"><?php echo $fname; ?> <?php echo $lname; ?> </span> </h1>
                <h3>Redirecting to home in: <span id="count">5</span></h3>
                <h4> <a href="../home.html">Go Home</a> </h4>
            </div>
            <script type="text/javascript">
                var count = 5;
                var interval = setInterval(function() {
                    document.getElementById('count').innerHTML = count;
                    count--;
                    if (count === 0) {
                        clearInterval(interval);
                        window.location.href = '../home.html';
                    }
                }, 1000);
                let name = document.querySelector("#name");
                localStorage.setItem('name', name.innerHTML);
            </script>
        </body>

        </html>

<?php
    } else {
        // echo "Error: " . $sql . "" . mysqli_error($conn);
        echo "<script>alert('Invalid email or password');</script>";
        echo "<script>window.location.href = '../home.html';</script>";
    }
    mysqli_close($conn);
}
?>