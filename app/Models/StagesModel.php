<?php
namespace App\Models;

use CodeIgniter\Model;

class StagesModel extends Model
{
    private  $monPdo; // @var PDO $monPDO
    /**
     * Initialise une instance de la classe StagesModel
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
    * Fournit les infos de tous les Stages
    * @return array
    */
    public function getList() : array {
        $query = "select id, numeroEtudiant, idPeriodeStage, descriptifMission, moyens, numeroOrganisation from Stage";
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
    * Fournit le stage correspondant au numéro spécifié
    * @param int $id
    * @return stdClass ou null
    */
    public function getById(int $id) : ?\stdClass {
        $query = "select id, descriptifMission, numeroOrganisation from Stage where id = :id";        
		$cmd = $this->monPdo->prepare($query);
        $cmd->bindValue("id", $id, \PDO::PARAM_INT);
        $cmd->execute();
        $ligne = $cmd->fetch(\PDO::FETCH_OBJ);
        $cmd->closeCursor();
        if ( $ligne === false ) {
            $ligne = null;
        }
        return $ligne;
    }
}