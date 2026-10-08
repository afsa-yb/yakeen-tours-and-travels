<!DOCTYPE html>
<html>

<head>
    <title>HTML Login Form</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="main">
        <h1>Login Form</h1>
        <h3>Enter your login credentials</h3>

        <form action="login_check.jsp" method="post">
            <label for="first">
                Username:
            </label>
            <input type="text" id="first" name="username" 
                placeholder="Enter your Username" required>

            <label for="password">
                Password:
            </label>
            <input type="password" id="password" name="password" 
                placeholder="Enter your Password" required>

            <div class="wrap">
                <button type="submit">
                    Submit
                </button>
            </div>
        </form>
        
        
    </div>
</body>

</html>
