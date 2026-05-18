CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

INSERT INTO users (username, password) VALUES ('admin', 'admin123');
INSERT INTO users (username, password) VALUES ('user1', 'password123');
INSERT INTO users (username, password) VALUES ('john_doe', 'johnny123');
INSERT INTO users (username, password) VALUES ('jane_smith', 'jane_pwd');
INSERT INTO users (username, password) VALUES ('alice_w', 'wonderland');
INSERT INTO users (username, password) VALUES ('bob_m', 'builder');
INSERT INTO users (username, password) VALUES ('charlie_b', 'chocolate');
INSERT INTO users (username, password) VALUES ('david_g', 'goliath');
INSERT INTO users (username, password) VALUES ('eve_a', 'apple');
INSERT INTO users (username, password) VALUES ('frank_z', 'zappa');
INSERT INTO users (username, password) VALUES ('grace_h', 'hopper');
INSERT INTO users (username, password) VALUES ('heidi_k', 'klum');
INSERT INTO users (username, password) VALUES ('ivan_t', 'terrible');
INSERT INTO users (username, password) VALUES ('judy_g', 'garland');
INSERT INTO users (username, password) VALUES ('kevin_b', 'bacon');
INSERT INTO users (username, password) VALUES ('laura_p', 'palmer');
INSERT INTO users (username, password) VALUES ('mallory_c', 'crypt');
INSERT INTO users (username, password) VALUES ('neil_a', 'armstrong');
INSERT INTO users (username, password) VALUES ('oscar_w', 'wilde');
INSERT INTO users (username, password) VALUES ('peggy_s', 'sue');
INSERT INTO users (username, password) VALUES ('quentin_t', 'tarantino');
INSERT INTO users (username, password) VALUES ('rose_t', 'tyler');
