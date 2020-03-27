GH allows files of up to 100MB (although it "warns" you above 50MB). However, the limit for assignment repos appears to be 10MB. 

Here is our work around: The idea is to stash files here, and have you manually download these and place them within your assignment repo. 

# Fannie_Mae_Plus_Data

This dataset combines info from Fannie_Mae with macro data from FRED. 

|Variable Name| Variable Description |  
|---|---|
| Loan_Identifier  | A unique identifier for the mortgage loan.  |    
| Origination_Channel  |  Channel refers to the three options listed  Retail (R) Correspondent (C) Broker (B) |    
| Seller_Name  |  The name of the entity that delivered the mortgage loan to Fannie Mae. |
| Original_Interest_Rate    | The original interest rate on a mortgage loan as identified in the original mortgage loan documents.|   
| Original_UPB  |  The original amount of the mortgage loan as indicated by the mortgage documents. |   
| Original_LTV_(OLTV)   |  A ratio calculated at the time of origination for a mortgage loan. The Original LTV reflects the loan-to-value ratio of the loan amount secured by a mortgaged property on the origination date of the underlying mortgage loan. |   
| Original_Combined_LTV_(CLTV)   |   A ratio calculated at the time of origination for a mortgage loan. The CLTV reflects the loan-to-value ratio inclusive of all loans secured by a mortgaged property on the origination date of the underlying mortgage loan.|   
| Number_of_Borrowers   |  The number of individuals obligated to repay the mortgage loan. |   
| Original_Debt_to_Income_Ratio   |  A ratio calculated at origination derived by dividing the borrower’s total monthly obligations (including housing expense) by his or her stable monthly income. This calculation is used to determine the mortgage amount for which a borrower qualifies. |   
| Borrower_Credit_Score_at_Origination     | When this term is used by Fannie Mae, it is referring to the "classic" FICO score developed by Fair Isaac Corporation.  |     
| Loan_purpose  | An indicator that denotes whether the mortgage loan is either a refinance mortgage or a purchase money mortgage. |   
| Property_type       | A field that denotes whether the property type securing the mortgage loan is a cooperative share, condominium, planned urban development, single-family home, or manufactured home.  |   
|  Number_of_units         |  The number of units comprising the related mortgaged property. |   
| Occupancy_type         | An indicator that denotes whether the mortgage loan, at its origination date, is secured by a principal residence, second home or investment property.  |   
|  Zip_code_short     |  Limited to the first three digits of the code designated by the U.S. Postal Service where the subject property is located. |   
| Primary_mortgage_insurance_percent     |  The original percentage of mortgage insurance coverage obtained for an insured conventional mortgage loan and used following the occurrence of an event of default to calculate the insurance benefit, as defined by the underlying master primary insurance policy. |  
|    Co-borrower_credit_score_at_origination      |   When this term is used by Fannie Mae, it is referring to the "classic" FICO score developed by Fair Isaac Corporation. |  
|  Mortgage_Insurance_type    | The entity that is responsible for the Mortgage Insurance premium payment.  |  
|  Origination_Date          | The date of the note.  |  
| First_payment_date   |  The date of the first scheduled mortgage loan payment to be made by the borrower under the terms of the mortgage loan documents. |  
| First_time_home_buyer_indicator     | An indicator that denotes if the borrower or co-borrower qualifies as a first-time homebuyer.  |  
| UNRATE     | National unemployment rate by month  |
| CPIAUCSL     | Consumer Price Index for All Urban Consumers: All Items in U.S. City Average - monthly data |
| RGDP     | Real Gross Domestic Product - quarterly data  |
| TCMR     | 10-Year Treasury Constant Maturity Rate - given as daily data, but converted to average of daily data to match monthly origination date |
| POILWTIUSDM     | Global price of WTI Crude - in US dollars per barrel  |
| TTLCONS     | Total Construction Spending - in millions of US dollars  |
| DEXUSEU     | U.S. / Euro Foreign Exchange Rate- daily - given as daily data, but converted to average of daily data to match monthly origination date |
| BOPGSTB     | Trade Balance: Goods and Services, Balance of Payments Basis - in millions of dollars  |
| GOLDAMGBD228NLBM     | Gold Fixing Price 10:30 A.M. (London time) in London Bullion Market, based in U.S. Dollars - given as daily data, but converted to average of daily data to match monthly origination date  |
| CSUSHPISA     | S&P/Case-Shiller U.S. National Home Price Index  |
| MSPUS     | Median Sales Price of Houses Sold for the United States  |

# firms_2006_fuller.dta

| Var | Description |
| :--- | :--- |
|  gvkey           |           Standard and Poor's Identifier                            |     
|  fyear           |           Data Year - Fiscal                                        |
|  datadate        |           Data Date                                                 |
|  lpermno         |           CRSP identifier (can match to permno)           |
|  gsector         |           GIC Sectors                                               |
|  sic             |           SIC industry 4-digit level <br> (=Compustat SICH, or SIC if blank)                  |
|  sic3            |           SIC industry 3-digit level.                  |
|  age             |           fyear - first_fyear_with_price; blank if <0               |
|  tic             |           Ticker Symbol                                             |
|  state           |           State/Province                                            |
|  at              |           Assets                                             |
|  me              |           Market Equity= csho*prcc_f                                 |
|  l_a             |           Log(at)                                                   |
|  l_sale          |           Log(Sales)                                                |
|  prof_a          |           Profitability = oibdp/at                           |
|  mb              |           Market to book = (at - ceq + (csho*prcc_f))/at                             |
|  ppe_a           |           Tangibility = ppe/at                                                    |
|  capx_a          |           CAPX (scaled) = capx/at                                        |
|  xrd_a           |           R&D investment (scaled) = xrd/at; 0 if blank                                        |
|  cash_a          |           Cash / Assets = che/at                                                    |
|  div_d           |           Dividend Dummy, blank if dv blank                              |
|  td_a            |           Leverage (% of book assets) = (dlc+dltt)/at                                             |
|  td_mv           |           Leverage (D/(E+D)) = (dlc+dltt)/(dlc+dltt+csho*prcc_f)                         |
|  dltt_a          |           Long term leverage = dltt/at                                                   |
|  dv_a            |           Dividend ratio = dv/at                                                     |
| invopps_FG09 | Investment Opportunity Proxy = |
| sales_g  | Sales Growth |
| short_debt  |  % of 1 yr debt = dlc/td |
| long_debt_dum  |  Any LT debt? (dltt > 0) if dltt != . |
| atr |  Avg Tax Rate (Not marginal tax rate!) = txt/(txt+ib), 0 if txt<0, 1 if txt>ib |
| smalltaxlosscarry | = 1 if (tlcf>0) and  tlcf < a threshold |
| largetaxlosscarry | = 1 if (tlcf>0) and tlcf > a threshold  |
|  tnic3hhi        |           Industry concentration  (TNIC industry def)                        |
|  tnic3tsimm      |           Total simularity within TNIC3 peers                       |
|  prodmktfluid    |           Industry Fluidity                                                  | (dynamism)
|  delaycon        |           Higher = more liquidity constrained |
|  equitydelaycon  |           Combines delaycon with indication of new equity soon      |
|  debtdelaycon    |           Combines delaycon with indication of new debt soon        |
|  privdelaycon    |           Combines delaycon with indication of new priv soon        |
|  l_emp           |           Log(1+emp)                                                |
|  l_ppent         |           Log(1+ppent)                                              |
|  l_laborratio    |           Log(ppent/emp)                                            |     

# CCM_cleaned_for_class.dta (40GB)

Similar to firms_2006_fuller.dta, but for 1975-2014, with a few more variables.

# compnames.csv

Has two variables: `coname` and `gvkey`. GVKEY can be linked to Compustat and CCM (and via CCM, CRSP). It's useful if you want to bring in the names of firms. 

If you need to use this to do any string matching to outside datasets (e.g. datasets without GVKEY, PERMNO, or CUSIP), you should scroll through it manually to get a sense of how names are stored:
- Are all letters upper case, lower case, or is there a mix? (**When doing string matching, it's a good idea to convert everything to upper case.**) 
- What punctuations are included and are those punctuations typically meaningful or signify anything? Should you replace them with spaces or delete them? 
- How are you going to deal with legal entity "tokens?" (a token is a group of letters). "ABC INCORPORATED" and "AAA INCORPORATED" are very similar - 14/16 characters are the same. 
- These names are valid as of 2020, meaning that merging to databases with older names won't work. For example, Phillip Morris changed its name to Altria, and this dataset calls it Altria. If you have a dataset with Phillip Morris in it, you're out of luck for that firm.

# 2007_inv_and_tech.dta

Similar to firms_2006_fuller.dta, but for **2007 AND 2008**, with a few new variables:

| Var | Description |
| :--- | :--- |
|  l_stock_grant_citew          |    Log(1+Stock of Firms Own Patents)                      |     
|  l_stock_trans_in_citew       |    Log(1+Stock of Patents Bought or Licensed-In)          |
|  l_stock_trans_out_citew      |    Log(1+Stock of Patents Sold or Licensed-Out)           |

The "stock" of patents granted is the stock of patents granted last year depreciated by 15% plus the "flow" of patents this year. The "flow" of patents is the number of patents granted plus new citations received by the firm. The `trans+in` and `trans_out` are computed similarly. 

The stock variables are heavily skewed, so we take the log. But the stock is often zero and log(0) is undefined, so we use "1+" inside the log to prevent that. 



