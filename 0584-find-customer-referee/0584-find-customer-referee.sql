select name from Customer
where ifnull(referee_id != '2',1)