CREATE TABLE IF NOT EXISTS categories (
  `id` BIGINT AUTO_INCREMENT NOT NULL COMMENT 'id',
  `category_id` INT NOT NULL DEFAULT 0 COMMENT 'category_id',
  `category_name` VARCHAR(128) NULL COMMENT '' ,
  `description` LONGTEXT NULL COMMENT 'description',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'categories'
PACK_KEYS = DEFAULT
ROW_FORMAT = DEFAULT;

INSERT INTO categories (category_id, category_name) values (1, 'foil');
INSERT INTO categories (category_id, category_name) values (1, 'category1');
INSERT INTO categories (category_id, category_name) values (1, 'category2');
INSERT INTO categories (category_id, category_name) values (1, 'category3');
INSERT INTO categories (category_id, category_name) values (1, 'category4');
INSERT INTO categories (category_id, category_name) values (1, 'category5');
