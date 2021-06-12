CREATE TABLE IF NOT EXISTS customer (
  `id` BIGINT AUTO_INCREMENT NOT NULL COMMENT 'id',
  `first_name` VARCHAR(64) NULL COMMENT '' ,
  `last_name` VARCHAR(64) NULL COMMENT '' ,
  `zip1` VARCHAR(3) NULL COMMENT '' ,
  `zip2` VARCHAR(4) NULL COMMENT '' ,
  `pref` VARCHAR(64) NULL COMMENT '' ,
  `address1` VARCHAR(255) NULL COMMENT '' ,
  `address2` VARCHAR(255) NULL COMMENT '' ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
COMMENT = 'customer'
PACK_KEYS = DEFAULT
ROW_FORMAT = DEFAULT;

-- insert sample data
insert into customer(first_name, last_name, zip1, zip2, pref, address1, address2)values( 'Tanaka', 'Tarou', '123', '456', 'Shizuoka', 'Hamamatsu', 'kitaku');
