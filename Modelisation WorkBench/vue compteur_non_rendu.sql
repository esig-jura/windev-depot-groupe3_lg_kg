CREATE VIEW compteur_non_rendu AS
SELECT ID_prod, quant_prod, SUM(quant_res) AS somme_prod_loue, SUM(quant_res)-quant_prod as stock_reel FROM TB_RESERVATION
INNER JOIN TB_PRODUIT ON (ID_prod = pk_fk_prod_res)
INNER JOIN TB_COMMANDE ON (no_comm = pk_fk_comm_res)
WHERE pk_fk_prod_res = 300 AND rendu_comm = 0;

