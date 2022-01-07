SELECT transaction_date, 
		(cast(amount as INT) + cast(fee as INT)) AS net_amount
FROM transactions;