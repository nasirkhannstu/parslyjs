<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="./parsley.css" >

    <title>Hello, world!</title>
<style>
.hidden{
    display:none;
}
</style>
</head>
<body>
<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "parsly";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT `id`,`name`,`extcode` FROM `ali_country`";
$result = $conn->query($sql);


if(isset($_POST['countryPhone'])){
    $countryCode = $_POST['country'];
    $phone = $_POST['phone'];
    echo 'Phone number with country code: '.$countryCode.$phone.'<br><br><br>';
}
?>


<div class="container mt-5">
    <div class="bs-callout bs-callout-warning hidden bg-warning">
        <h4>Oh snap!</h4>
        <p>This form seems to be invalid :(</p>
    </div>

    <div class="bs-callout bs-callout-info hidden bg-success">
        <h4>Yay!</h4>
        <p>Everything seems to be ok :)</p>
    </div>

    <form id="demo-form" data-parsley-validate="" method="POST">
        <div class="row">
            <div class="col-md-6">
                <label for="code">Heard about us via *:</label>
                <select id="country" required="" class="form-control" name="country">
                    <option value="">Choose..</option>
                    <?php
                        if ($result->num_rows > 0) {
                            // output data of each row
                            while($row = $result->fetch_assoc()) {
                                $name = $row['name'];
                                echo "<option value='$name'>$name</option>";
                            }
                        }
                    ?>
                </select>
            </div>
            <div class="col-md-6">
                <label for="fullname">Phone :</label>
                <input data-parsley-multiple-of="3" type="text" class="form-control" name="phone" required="" data-parsley-minlength="6"  data-parsley-minlength-message="Please enter between 5 - 16 characters" data-parsley-maxlength="16"  data-parsley-maxlength-message="Please enter between 5 - 16 characters" data-parsley-trigger="keyup" data-parsley-pattern="^[\d\-\/]*$" data-parsley-pattern-message="Please enter Numbers and/or hyphens '-' and/or forward slashes '/' only">
            
            </div>
        </div>
        <br>
        <input type="submit" class="btn btn-primary" name="countryPhone" value="validate">
    </form>
</div>
<?php $conn->close(); ?>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="./parsley.min.js"></script>


<script type="text/javascript">
$(function () {
    window.Parsley.addValidator('multipleOf', {
  validateNumber: function(value, requirement) {
    var selectedCountry = $('#country').children("option:selected").val();
    str = value.toString(),
    len = str.length;
    fst = str.charAt(0);
    if(selectedCountry == 'Saudi Arabia'){
        if(fst == 5){
            return 1;
        }else{
            // if(len > 5 && len <= 9){
            if(len > 5){
                console.log(selectedCountry)
                return len = len === 0;
            }
            return 1;
        }
    }
  },
  requirementType: 'integer',
  messages: {
    en: '9-digit number starts with 5.',
  }
});



  $('#demo-form').parsley().on('field:validated', function() {
    var ok = $('.parsley-error').length === 0;
    $('.bs-callout-info').toggleClass('hidden', !ok);
    $('.bs-callout-warning').toggleClass('hidden', ok);
  })
  .on('form:submit', function() {
    return false; // Don't submit form for this demo
  });
});
</script>

</body>
</html>