INSERT INTO roles (name) VALUES ('ROLE_GPL');
INSERT INTO roles (name) VALUES ('ROLE_PM');
INSERT INTO roles (name) VALUES ('ROLE_PE');
INSERT INTO roles (name) VALUES ('ROLE_PMO');

INSERT INTO users (username, email, password, enabled) VALUES ('f.mujica', 'f.mujica1995@gmail.com', '$2a$10$EtV2heRcxg533ZkEVPalUeQXvS9gTpUFqzjPdli2/KtVW5zmclYhC', true);
INSERT INTO users (username, email, password, enabled) VALUES ('user.pm', 'user.pm@gmail.com', '$2a$10$ksu/mw5mymy.yIGo3CAYNOjG6aPlKnbpF8ZdMwem5wCkWU8ZqsD2q', true);
INSERT INTO users (username, email, password, enabled) VALUES ('user.pe', 'user.pe@gmail.com', '$2a$10$nnqEB7Miq7ZCPKdsYR5goeQM0Cb.xEBjZnI.ftkGjxwTRDOvjXOa6', true);

INSERT INTO users_roles (usuario_id, role_id) VALUES (1, 1);
INSERT INTO users_roles (usuario_id, role_id) VALUES (2, 2);
INSERT INTO users_roles (usuario_id, role_id) VALUES (3, 3);

