<?php
namespace App\Models;

use CodeIgniter\Model;

class ContactsModel extends Model
{
    private  $monPdo; // @var PDO $monPDO
    /**
     * Initialise une instance de la classe Contacts_Model
     * - Récupère les paramètres de configuration liés au serveur MySql
     * - Prépare les requêtes SQL qui comportent des parties variables
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
    * Fournit les infos de tous les contacts d'une organisation
    * @param $numOrga int
    * @return array
    */
    public function getList(int $numOrga) : array {
        $query = "select id, nom, prenom from Contact";
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
    * Fournit le contact correspondant à l'id et au numéro d'organisation spécifiés
    * @param int $numOrga
    * @param int $idContact
    * @return stdClass ou null
    */
    public function getById(int $numOrga, int $idContact) : ?\stdClass {
        $query = "select id, civilite, nom, prenom from Contact where numeroOrganisation = :numOrga and id = :id";
        $cmd = $this->monPdo->prepare($query);
        $cmd->bindValue("numOrga", $numOrga);
        $cmd->bindValue("id", $idContact);
        $cmd->execute();
        $ligne = $cmd->fetch(\PDO::FETCH_OBJ);
        $cmd->closeCursor();
        if ( $ligne === false ) {
            $ligne = null;
        }
        return $ligne;
    }
}