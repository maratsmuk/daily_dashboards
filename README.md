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

The dashboard consists of three main pages or tabs: 
1.  Tables dashboard; 
2.  Plot dashboard; 
3.  Full tables. 

1. Tables dashboard page consists of 
- the interactive dropdown for selecting an account;
- brief information about the account (open date, close date, state (open/close), initial balance, final balance). 
- Table 1: Daily balances for Account 1 (the main resulting table consisting of the balance of the selected account for every day from its opening to its closing or to yesterday if it is still open). 
- Tables 2-3-4 (related to three respective tabs): the last 100 transactions executed on the selected account. Only incomes (Table 2), only outcomes (Table 3), all transactions (incomes and outcomes, Table 4) are visualized respectively. 

Tables 1-4 are fully interactive with the full support of SQL, Explore data (with different graphical tools) and export to MS Excel. 

2. Plot dashboard page consists of:
- the interactive dropdown for selecting an account;
- brief information about the account (open date, close date, state (open/close), initial balance, final balance). 
- Fully interactive plot showing the daily balances for the selected account for every day from its opening to its closing or to yesterday if it is still open.  

3. Full tables page consists of the original database tables (only the last 100 rows are visualized to ensure its robustness):
- Accounts;
- Dates;
- Transactions. 
The purpose of this last page is to show to format of the original database. 
N.B. The tables are visualized as Pandas dataframes and not as interactive DataTables, so their indices are default Pandas indices and not the IDs like in the original database. 
