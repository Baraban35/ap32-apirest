<?php

namespace App\Controllers;
use App\Models\ContactsModel;
class Contacts extends BaseController
{
    /**
     * Traite la demande par défaut sur le contrôleur Contacts
     * Appelée si aucune méthode spécifiée dans l'URL
     */
    public function index() {
        $this->getAll();
    }

    /**
     * Récupère tous les contacts de l'organisation numéro $numOrga
     * Prépare et envoie la réponse http : code statut, contenu
     * @param string $numOrga
     * @returns void
     */
    public function getAll(string $numOrga) : void {
        $model = model(ContactsModel::class);
        $tab = $model->getList(intval($numOrga));
        $result = ["message" => "OK", "data" => $tab];
        $this->response
                ->setStatusCode(200)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }

    /**
     * Récupère le contact d'id $id dans l'organisation de numéro $numOrga
     * Prépare et envoie la réponse http : code statut, contenu
     * @param string $numOrga
     * @param string $id
     * @returns void
     */
    public function getById(string $numOrga, string $id) : void {
        $model = model(ContactsModel::class);
        $unContact = $model->getById(intval($numOrga), intval($id));
        $result = ["message" => "OK", "data" => $unContact];
        $this->response
                ->setStatusCode(200)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }
}