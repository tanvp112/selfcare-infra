-- DROPPING MONITORING_USER
ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE SELECT ON TABLES FROM "MONITORING_USER";
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM "MONITORING_USER";

ALTER DEFAULT PRIVILEGES IN SCHEMA party REVOKE SELECT ON TABLES FROM "MONITORING_USER";
REVOKE ALL ON ALL TABLES IN SCHEMA party FROM "MONITORING_USER";
REVOKE USAGE ON SCHEMA party FROM "MONITORING_USER";

ALTER DEFAULT PRIVILEGES IN SCHEMA attribute_registry REVOKE SELECT ON TABLES FROM "MONITORING_USER";
REVOKE ALL ON ALL TABLES IN SCHEMA attribute_registry FROM "MONITORING_USER";
REVOKE USAGE ON SCHEMA attribute_registry FROM "MONITORING_USER";

REVOKE ALL ON DATABASE selc FROM "MONITORING_USER";
DROP ROLE "MONITORING_USER";

-- DROPPING MONITORING_EXTERNAL_USER
ALTER DEFAULT PRIVILEGES IN SCHEMA public REVOKE SELECT ON TABLES FROM "MONITORING_EXTERNAL_USER";
REVOKE ALL ON ALL TABLES IN SCHEMA public FROM "MONITORING_EXTERNAL_USER";

ALTER DEFAULT PRIVILEGES IN SCHEMA party REVOKE SELECT ON TABLES FROM "MONITORING_EXTERNAL_USER";
REVOKE ALL ON ALL TABLES IN SCHEMA party FROM "MONITORING_EXTERNAL_USER";
REVOKE USAGE ON SCHEMA party FROM "MONITORING_EXTERNAL_USER";

ALTER DEFAULT PRIVILEGES IN SCHEMA attribute_registry REVOKE SELECT ON TABLES FROM "MONITORING_EXTERNAL_USER";
REVOKE ALL ON ALL TABLES IN SCHEMA attribute_registry FROM "MONITORING_EXTERNAL_USER";
REVOKE USAGE ON SCHEMA attribute_registry FROM "MONITORING_EXTERNAL_USER";

REVOKE ALL ON DATABASE selc FROM "MONITORING_EXTERNAL_USER";
DROP ROLE "MONITORING_EXTERNAL_USER";

--DROPPING SCHEMA
DROP SCHEMA party;
DROP SCHEMA attribute_registry;

-- DROPPING SCHEMA USERS
REVOKE ALL ON DATABASE selc FROM "PARTY_USER";
DROP ROLE "PARTY_USER";

REVOKE ALL ON DATABASE selc FROM "ATTRIBUTE_REGISTRY_USER";
DROP ROLE "ATTRIBUTE_REGISTRY_USER";