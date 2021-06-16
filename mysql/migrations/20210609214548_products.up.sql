CREATE TABLE IF NOT EXISTS products (
  `id` BIGINT AUTO_INCREMENT NOT NULL COMMENT 'id',
  `category_id` INT NOT NULL DEFAULT 0 COMMENT 'category_id',
  `product_name` VARCHAR(64) NULL COMMENT '' ,
  `price` INT NOT NULL DEFAULT 0 COMMENT 'price',
  `sold_flg` int NULL default 0 COMMENT 'sold_flg',
  `description` LONGTEXT NULL COMMENT 'description',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'products'
PACK_KEYS = DEFAULT
ROW_FORMAT = DEFAULT;

INSERT INTO products (category_id, product_name, price, description) values (1, 'savannah', 30000, 'MTG card');
