<?php
//print_r($_POST);
if(isset($_POST["submit"])){
    echo '<div class="alert alert-success alert-dismissible">';

    $selected_roles=$_POST["selected_roles"];

    $arrlength = count($selected_roles);

    for($x = 0; $x < $arrlength; $x++) {
        echo $x;
        echo " ".$selected_roles[$x];
        echo "<br>";
    }

    echo '</div>';
    $newvalues=  implode(",", $selected_roles);
    include_once './checkboxClass.php';
    $checkBoxClass=new checkboxClass();
    echo $checkBoxClass->addtoDatabase($newvalues);
}
?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/checktree.js"></script>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <style>
        body { background-color:#fafafa;}
        .container { margin:150px auto; max-width:600px;}
    </style>
    <link href="https://bootswatch.com/paper/bootstrap.min.css" rel="stylesheet" type="text/css">
    <title>Junior PHP work test</title>
</head>
<body>

<?php
//Database Connection
$servername = "localhost";
$username = "id7540069_root";
$password = "adminadmin";
$dbname = "id7540069_rolemanager";

$conn = mysqli_connect($servername, $username, $password, $dbname) or die("Connection failed: " . mysqli_connect_error());

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

// Select all fram treeview_items
$qry = "SELECT * FROM `treeview_items` ";
$result = mysqli_query($conn, $qry) or die("database error:". mysqli_error($conn));

// array $privileges is data in treeview_items table
$privileges = array();

while($row = mysqli_fetch_assoc($result)){
    $privileges[$row['id']] = array("parent_id" => $row['parent_id'], "name" => $row['name'], "text" => $row['text']);
}

//createTree($arrayCategories, 0);
function createTree($array, $currentParent, $currLevel = 0, $prevLevel = -1) {

    foreach ($array as $categoryId => $category) {

        if ($currentParent == $category['parent_id']) {

            if ($currLevel > $prevLevel) echo '<ul class="checktree">';

            if ($currLevel == $prevLevel) echo " </li> ";

            echo '<li><input type="checkbox" id="selected_roles" name="selected_roles[]" value="'.$category['text'].'"/> <label>'.$category['name'].'</label>';

            if ($currLevel > $prevLevel) { $prevLevel = $currLevel; }

            $currLevel++;

            createTree ($array, $categoryId, $currLevel, $prevLevel);

            $currLevel--;
        }

    }

    if ($currLevel == $prevLevel) echo " </li>  </ul> ";

}
?>
<div class="jumbotron text-center">
    <h1><h1>Junior PHP work test</h1></h1>
    <p>By: <a href="https://www.resume.com/share/naowalsiripatana" target="_blank">Naowal Siripatana</a></p>
</div>
<div class="container">
    <h3>Select Privileges</h3>
    <div id="content" class="general-style1">
        <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="post">
            <?php
            if(mysqli_num_rows($result)!=0)
            {
                ?>
                <?php createTree($privileges, 0); ?>
                <?php
            }
            ?>
            <br/>
            <input type="submit" id="submit" name="submit" value="Submit" class="btn btn-primary">
        </form>
    </div>

</div>
<script>
    $(function(){
        $("ul.checktree").checktree();
    });
</script>

</body>
</html>


