<?php

namespace App\Controllers;
use App\Models\StagesModel;
class Stages extends BaseController
{
    /**
     * Traite la demande par défaut sur le contrôleur Stages
     * Appelée si aucune méthode spécifiée dans l'URL
     */
    public function index() {
        $this->getAll();
    }

    /**
     * Récupère tous les stages 
     */
    public function getAll() : void {
        $model = model(StagesModel::class);
        $tab = $model->getList();
        $result = ["message" => "OK", "data" => $tab];
        $this->response
                ->setStatusCode(200)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }
    /**
     * Récupère un Stage à partir de l'identifiant $id
     * Prépare et envoie la réponse http : code statut, contenu
     * @param string $id
     */
    public function getById(string $id) : void {
        $model = model(StagesModel::class);
        $unStage = $model->getById($id);
        $result = ["message" => "OK", "data" => $unStage];
        $this->response
                ->setStatusCode(200)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }
}
