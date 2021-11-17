with acc0(day_acc_id,day_dt,close_dt) as (
		select A.id,A.open_dt, 
		case when A.close_dt<(current date - 1) then A.close_dt else (current date - 1) end as close_dt
		from accounts A 
		--where A.id = 3 
		union all
		select day_acc_id, day_dt+1, close_dt
		from acc0
		where day_dt<close_dt)
		select day_acc_id as account,day_dt as day,
		sum(amt) over (partition by day_acc_id order by day_dt) as balance from (
		select T3.day_acc_id, T3.day_dt,sum(amt) as amt from (select day_acc_id,day_dt,
		case when day_dt=date(dttm) then amt else 0 end as amt
		from acc0 left join transactions on acc0.day_acc_id = account_id and acc0.day_dt = date(dttm) order by day_acc_id,day_dt) as T3 group by day_acc_id, day_dt);
		
