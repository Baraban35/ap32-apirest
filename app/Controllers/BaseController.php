<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;
use App\Models\EtudiantsModel;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = [];

    /**
     * Be sure to declare properties for any property fetch you initialized.
     * The creation of dynamic property is deprecated in PHP 8.2.
     */
    // protected $session;

    /**
     * @return void
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.
        if ($request->header("Authorization") !== null) { // On vérifie si l'objet existe
            $data = $request->header("Authorization")->getValue();

            $exploded = explode(" ", $data);

            $schem = $exploded[0]; // On récupère le schéma
            $base64 = $exploded[1]; // On récupère la base 64

            if ($schem == "Basic") { // Vérif Basic
                $decode = base64_decode($base64); // On explode les informations de la base 64
                $decodeExploded = explode(":", $decode);

                if (count($decodeExploded) != 2) {
                    $response->setStatusCode(403, "Forbidden");
                    $response->setJSON(["message" => "Accès interdit, décodage base64 impossible"]);
                    $response->send();
                    exit();
                }
                $login = $decodeExploded[0];
                $mdp = $decodeExploded[1];

                $model = null;

                try {
                    $model = model(EtudiantsModel::class);
                } catch (\Exception $e) {
                    $result = ["message" => $e->getMessage()];
                    $this->response
                        ->setStatusCode(500)
                        ->setHeader('Content-type', 'application/json')
                        ->setJson($result);
                    $this->response->send();
                    exit();
                }

                if ($model != null) {
                    $user = $model->getByEmailMdp($login, $mdp);
                    if ($user == null) { // On check les identifiants
                        // User exsite pas
                        $response->setStatusCode(403, "Forbidden");
                        $response->setJSON(["message" => "Login ou mot de passe incorrect", "headers" => $request->headers()]);
                        $response->send();
                        exit();
                    } 
                }
            } else {
                // On renvoie du 401
                $response->setStatusCode(403, "Forbidden");
                $response->setJSON(["message" => "Accès interdit, schéma Basic non demandé"]);
                $response->send();
                exit();
            }
        } else {
            $response->setStatusCode(401, "Unauthorized");
            $response->setHeader("WWW-Authenticate", 'Basic realm="Staging site"');
            $response->send();
            exit();
        }
    }

        // E.g.: $this->session = \Config\Services::session();
    /**
     * Prépare et envoie une réponse http avec code statut 404 et ressource invalide
     */
    public function sendNomRessourceInvalide() {
        $result = ["message" => "Nom ressource ou méthode HTTP invalide"];
        $this->response
                ->setStatusCode(404)
                ->setHeader('Content-type', 'application/json')
                ->setJSON($result);
        $this->response->send();
    }
}
