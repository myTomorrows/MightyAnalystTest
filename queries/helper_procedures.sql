CREATE OR REPLACE TABLE
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.helper_porcedures` AS
SELECT
  fp.start              AS procedure_start,
  fp.stop               AS procedure_stop,
  fp.patient            AS patient_id,
  fe.payer              AS client_id,
  dp.name               AS client_name,
  fe.organization       AS organization_id,
  do.name               AS organization_name,
  fp.encounter          AS encounter_id,
  fp.code               AS procedure_code,
  fp.description        AS procedure_description,
  fp.base_cost          AS procedure_base_cost,
  fp.reasoncode         AS procedure_reason_code,
  fp.reasondescription  AS procedure_reason_description
FROM
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.ft_procedure` AS fp
LEFT JOIN
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.ft_encounter` AS fe
ON
  fp.encounter = fe.id
LEFT JOIN
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.dm_payer` AS dp
ON
  fe.payer = dp.id
LEFT JOIN
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.dm_organization` AS DO
ON
  fe.organization = do.id
QUALIFY
  ROW_NUMBER() OVER (PARTITION BY patient_id, encounter_id, procedure_description, procedure_start, procedure_stop) = 1
