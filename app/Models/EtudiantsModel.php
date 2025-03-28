<?php
namespace App\Models;

use CodeIgniter\Model;

class EtudiantsModel extends Model
{
    private  $monPdo; // @var PDO $monPDO
    /**
     * Initialise une instance de la classe EtudiantsModel
     * - Récupère les paramètres de configuration liés au serveur MySql
     * - Initialise une connexion avec le serveur MySql
     */
    public function __construct() {
         parent::__construct();
        // demande à charger les paramètres de configuration de la connexion à la BD
        $server = $_ENV["hostname"];
        $bdd = $_ENV["database"];
        $user =$_ENV["username"];
        $mdp = $_ENV["password"];
        $driver = $_ENV["DBDriver"];

        // ouverture d'une connexion vers le serveur MySql dont la configuration vient d'être chargée
        try {
                $this->monPdo = new \PDO($driver . ":host=" . $server . ";dbname=" . $bdd . ";charset=UTF8", 
                                                        $user, $mdp, 
                                                        array(\PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES 'UTF8'",
                                                              \PDO::ATTR_ERRMODE=>\PDO::ERRMODE_EXCEPTION));	
        }
        catch (\Exception $e) {
                log_message('error', $e->getMessage());
                throw new \Exception("Base de données inaccessible");
        }
    }
    /**
    * Fournit l'ensemble des caractéristiques de tous les étudiants
    * @return array
    */
    public function getList() : array {
        $query = "select * from Etudiant";
        $cmd = $this->monPdo->prepare($query);
        $cmd->execute();
        $lignes = $cmd->fetchAll(\PDO::FETCH_OBJ);
        $cmd->closeCursor();
        if ( $lignes === false ) {
            $lignes = null;
        }
        return $lignes;
    }
    /**
    * Fournit l'étudiant correspondant aux login et mot de passe spécifiés
    * Retourne null si aucun étudiant correspondant
    * @param string $email
    * @param string $mdp
    * @return stdClass ou null
    */
    public function getByEmailMdp(string $email, string $mdp) : ?\stdClass {
        $query = "select numero, nom, prenom, email from Etudiant where email = :email and mdp = :mdp";
        $cmd = $this->monPdo->prepare($query);
        $cmd->bindValue("email", $email);
        $cmd->bindValue("mdp", $mdp);
        $cmd->execute();
        $ligne = $cmd->fetch(\PDO::FETCH_OBJ);
        $cmd->closeCursor();
        if ( $ligne === false ) {
            $ligne = null;
        }
        return $ligne;
    }
}