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
    /**
     * Modifie une organisation à partir de son numéro
     * Prépare et envoie la réponse http : code statut, contenu
     * @param string $num
     */
    public function update(string $num) : void {
        $model = model(OrganisationsModel::class);
        $numero = intval($num);
        $uneOrganisation = $model->getById($numero);
        if ( $uneOrganisation === null ) {
            $codeStatut = 404;
            $result = [ "message" => "Numéro organisation inexistant"];
        }
        else {

            $data = $this->request->getJSON();
            if ($data === null) {
                $codeStatut = 400;
                $result = ["message" => lang("messagesErreurAPI.dataInvalid"), "errors" => "Aucune donnée attendue"]; 
            }
            else {
                // on récupère toutes les données à modifier dans un objet JSON
                // il faudra contrôler le domaine de valeurs des données récupérées
                //  Chargement de la classe validation
                $validation =  \Config\Services::validation();
                $rules = [   "ville" => "permit_empty|max_length[60]",
                             "cp" => "permit_empty|exact_length[5]|regex_match[/[0-9]{5}/]",
                             "adresse" => "permit_empty|max_length[256]"
                ];
                $validation->setRules($rules);
                $validation->withrequest($this->request);
                if ( $validation->run() ) {
                        
                        // il faudra contrôler le domaine de valeurs des données récupérées
                        $ok = $model->updateById($num, $data);
                        $result = ["message" => "OK"];
                        $codeStatut = 200;
                }
                else {
                    $codeStatut = 400;
                    $result = ["message" => lang("messagesErreurAPI.dataInvalides"), "errors" => $validation->getErrors()];
                }
            }
        }
        $this->response
                ->setStatusCode($codeStatut)
                ->setHeader('Content-type', 'application/json')
                ->setJson($result);
        $this->response->send();
    }
}
