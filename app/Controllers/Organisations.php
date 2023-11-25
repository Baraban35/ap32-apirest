<?php

namespace App\Controllers;
use App\Models\OrganisationsModel;
class Organisations extends BaseController
{
    /**
     * Traite la demande par défaut sur le contrôleur Organisations
     * Appelée si aucune méthode spécifiée dans l'URL
     */
    public function index() {
        $this->getAll();
    }
    /**
     * Récupère toutes les organisations
     * Prépare et envoie la réponse http : code statut, contenu
     * @returns void
     */
    public function getAll() : void {
        $model = model(OrganisationsModel::class);
        $tab = $model->getList();
        $result = ["message" => "OK", "data" => $tab];
        $this->response
                ->setStatusCode(200)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }

    /**
     * Récupère une organisation à partir de l'identifiant $numero
     * Prépare et envoie la réponse http : code statut, contenu
     * @param string $numero
     * @returns void
     */
    public function getById(string $numero) : void {
        $model = model(OrganisationsModel::class);
        $uneOrganisation = $model->getById(intval($numero));
        $result = ["message" => "OK", "data" => $uneOrganisation];
        $this->response
                ->setStatusCode(200)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }
}
