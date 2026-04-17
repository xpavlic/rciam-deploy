INSERT INTO tenants (name,client_id,client_secret,issuer_url,base_url)
VALUES ('cesnet','37a33acf-8d0a-42b0-9e81-eb3f5a2341db','28fe271a-9446-4649-8b59-26afd35257be784abc44-416f-42b0-8346-1b9cd5de7225','https://login.e-infra.cz/oidc','https://cloud255-85.cerit-sc.cz/cesnet')
ON CONFLICT (name) 
DO UPDATE SET client_secret = EXCLUDED.client_secret;

INSERT INTO user_roles (role_name,tenant)
VALUES ('End User','cesnet');
INSERT INTO user_roles(role_name,tenant)
VALUES ('Administrator','cesnet');

INSERT INTO role_entitlements (role_id,entitlement)

VALUES (2,'urn:geant:cesnet.cz:group:e-infra.cz:SP_Managers:Federation_registry_dev#perun.cesnet.cz');


INSERT INTO role_actions(role_id,action)
VALUES(1 , 'get_user'),
      (1 , 'get_own_services'),
      (1 , 'get_own_service'),
      (1 , 'get_own_petitions'),
      (1 , 'get_own_petition'),
      (1 , 'add_own_petition'),
      (1 , 'update_own_petition'),
      (1 , 'delete_own_petition'),
      (1 , 'view_errors'),
      (2 , 'get_user'),
      (2 , 'get_own_services'),
      (2 , 'get_own_service'),
      (2 , 'get_service'),
      (2 , 'get_own_petitions'),
      (2 , 'get_own_petition'),
      (2 , 'get_petition'),
      (2 , 'add_own_petition'),
      (2 , 'update_own_petition'),
      (2 , 'delete_own_petition'),
      (2 , 'review_own_petition'),
      (2 , 'review_restricted'),
      (2 , 'get_petitions'),
      (2 , 'get_services'),
      (2 , 'view_groups'),
      (2 , 'invite_to_group'),
      (2 , 'view_errors'),
      (2 , 'send_notifications'),
      (2 , 'error_action'),
      (2 , 'review_petition'),
      (2 , 'manage_tags'),
      (2 , 'export_services'),
      (2 , 'review_notification');

INSERT INTO tenant_deployer_agents (tenant,integration_environment,type,entity_type,hostname,entity_protocol,deployer_name)
VALUES
    --('muni', 'production', 'ssp', 'service', 'id-test.id.muni.cz','saml',null ),
    --('muni', 'demo', 'ssp', 'service', 'id-test.id.muni.cz','saml',null ),
    --('muni', 'development', 'ssp', 'service', 'id-test.id.muni.cz','saml',null ),
    --('muni', 'production', 'mitreid', 'service', 'id-test.id.muni.cz','oidc',null ),
    --('muni', 'demo', 'mitreid', 'service', 'id-test.id.muni.cz','oidc',null ),
    --('muni', 'development', 'mitreid', 'service', 'id-test.id.muni.cz','oidc',null );
    -- MERGED ENVIRONMENTS
    ('cesnet', 'merged', 'cas', 'service', 'cas.dev.perun-aai.org','saml',null ),
    ('cesnet', 'merged', 'cas', 'service', 'cas.dev.perun-aai.org','oidc',null );
