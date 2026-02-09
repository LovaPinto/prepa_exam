<?php
namespace user;

class User{
    private $username;
    private $email;
    private $id_role;
    private $mot_de_passe;

    public static function getUser($conn) {
        $sql = "SELECT * FROM users INNER JOIN role ON role.id = users.id_role";
        $statement = $conn->prepare($sql);
        $statement->execute(); // obligatoire
        return $statement->fetchAll(PDO::FETCH_ASSOC); // récupère toutes les lignes
    }
    


}










