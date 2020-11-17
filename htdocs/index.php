<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="script.js"></script>
    <title>Document</title>
</head>
<body>
    <table>
        <tr>
            <th>Ville</th>
            <th>Haut</th>
            <th>Bas</th>
        </tr>
        <?php
            if(isset($_POST['submit'])){
            require 'connect.php';
            $ville = $_POST["ville"];
            $haut=$_POST["haut"];
            $bas=$_POST["bas"];
            $sql = 'INSERT INTO Météo (ville, haut, bas) VALUES ("'.$ville.'",'.$haut.','.$bas.')';
            $nb = $pdo->exec($sql);
            }
        function display(){
        require 'connect.php';
        $sql = $pdo->query('SELECT * FROM Météo');
        while ($rows = $sql->fetch())
        {
        echo '<tr><td><input type="checkbox" name="table" value="'.$rows['ville'].'">'.$rows['ville'].'</td><td>'.$rows['haut'].'</td><td>'.$rows['bas'].'</td></tr>';
        }
        $sql->closeCursor();  
        return;
        }

        display();
        ?>
    </table>
    <button id="delete">Delete</button>
    <form method="POST">
    <label for="ville">Ville</label>
    <input type="text" name="ville">
    <label for="haut">haut</label>
    <input type="number" name="haut">
    <label for="bas">bas</label>
    <input type="number" name="bas">
    <input type="submit" name='submit'>
    </form>
    
</body>
</html>