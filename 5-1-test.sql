DROP TABLE IF EXISTS mst_users;
CREATE TABLE mst_users(
    user_id         varchar(255)
  , register_date   varchar(255)
  , register_device integer
);

INSERT INTO mst_users
VALUES
    ('U001', '2016-08-26', 1)
  , ('U002', '2016-08-26', 2)
  , ('U003', '2016-08-27', 3)
;

SELECT
	USER_ID
	, CASE
		WHEN register_device = 1 THEN '����ũ��'
		WHEN register_device = 2 THEN '����Ʈ��'
		WHEN register_device = 3 THEN '���ø����̼�'
		-- ����Ʈ ���� ������ ��� ELSE ������ ����մϴ�.
		-- ELSE ''
	END AS device_name
FROM mst_users
;
