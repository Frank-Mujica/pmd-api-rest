INSERT INTO roles (name) VALUES ('ROLE_GPL');
INSERT INTO roles (name) VALUES ('ROLE_PM');
INSERT INTO roles (name) VALUES ('ROLE_PME');
INSERT INTO roles (name) VALUES ('ROLE_PMO');

INSERT INTO users (username, email, password, enabled) VALUES ('f.mujica', 'f.mujica1995@gmail.com', '$2a$10$EtV2heRcxg533ZkEVPalUeQXvS9gTpUFqzjPdli2/KtVW5zmclYhC', true);

INSERT INTO users_roles (usuario_id, role_id) VALUES (1, 1);

