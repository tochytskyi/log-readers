sample-mysql:
	docker exec -i mysql-slow-logs mysql -u root -proot < ./conf/mysql/test_db/employees.sql

make-slow-logs:
	docker exec mysql-slow-logs mysql -u root -proot < ./conf/mysql/slow-query.sql

show-slow-logs:
	docker exec -i mysql-slow-logs tail /var/log/mysql/slow.log