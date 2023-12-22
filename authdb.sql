CREATE TABLE IF NOT EXISTS product (
    uuid VARCHAR(36) NOT NULL DEFAULT (uuid_generate_v4()),
    name VARCHAR(100) NOT NULL,
    price INTEGER NOT NULL,
    userId INTEGER NOT NULL,
    CONSTRAINT pk_product PRIMARY KEY (uuid),
    CONSTRAINT fk_product_user FOREIGN KEY (userId) REFERENCES users(uuid)
);

CREATE TABLE IF NOT EXISTS users (
    uuid VARCHAR(36) NOT NULL DEFAULT (uuid_generate_v4()),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(100) NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (uuid)
);
