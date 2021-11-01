# Daily dashboards
## Created by M.S. Mukhametzhanov
### An interactive public dashboard is created on datapane.com: https://datapane.com/u/maratsmuk/reports/VkGygN3/daily-dashboards/

Contents: 
- [daily_dashboards]db_generation.ipynb 
- [daily_dashboards]interactive_dashboard.ipynb
- DB_accounts.db
- accounts.csv
- dates.csv
- transactions.csv

*csv-files are used only for a fast visualization of the database, they are not used for the dashboard creation. 
[daily_dashboards]db_generation.ipynb generates the database according to its requirements. 
[daily_dashboards]interactive_dashboard.ipynb generates the daily balance dashboard with the following input: 
database with the following tables:
- Accounts(id UNSIGNED INT PK, open_dt DATE NOT NULL, close_dt DATE NOT NULL)
- Dates(dt DATE PK)
- Transactions(id UNSIGNED INT PK, account_id UNSIGNED INT NOT NULL, dttm DATETIME NOT NULL, amt FLOAT)

