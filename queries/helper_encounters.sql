CREATE OR REPLACE TABLE
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.helper_encounters` AS
SELECT
  fe.id                   AS encounter_id,
  fe.start                AS encounter_start,
  fe.stop                 AS encounter_stop,
  fe.patient              AS patient_id,
  fe.organization         AS organization_id,
  do.name                 AS organization_name,
  fe.payer                AS client_id,
  dp.name                 AS client_name,
  fe.encounterclass       AS encounter_class,
  fe.code                 AS encounter_code,
  fe.description          AS encounter_description,
  fe.base_encounter_cost  AS encounter_base_cost,
  fe.total_claim_cost     AS encounter_total_claim_cost,
  fe.payer_coverage       AS encounter_client_coverage,
  fe.reasoncode           AS encounter_reason_code,
  fe.reasondescription    AS encounter_reason_description
FROM
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.ft_encounter` AS fe
LEFT JOIN
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.dm_payer` AS dp
ON
  fe.payer = dp.id
LEFT JOIN
  `mytomorrows-analyst-test.mytomorrows_edwingelebart.dm_organization` AS DO
ON
  fe.organization = do.id
QUALIFY
  ROW_NUMBER() OVER (PARTITION BY patient_id, encounter_id, encounter_description, encounter_start, encounter_stop) = 1
