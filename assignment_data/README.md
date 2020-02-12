GH allows files of up to 100MB (although it "warns" you above 50MB). However, the limit for assignment repos appears to be 10MB. 

So: I'm trying a work around. The idea is to stash files here, and have you manually download these and place them within your assignment repo. I hope to have a better solution, but this is my best bet on a quick basis.

Sorry,
Don

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
|  xrd_a           |           R&D investment (scaled) = xrd/at; 0 if blank                                        |
|  cash_a          |           Cash / Assets = che/at                                                    |
|  div_d           |           Dividend Dummy, blank if dv blank                              |
|  td_a            |           Leverage (% of book assets) = (dlc+dltt)/at                                             |
|  td_mv           |           Leverage (D/(E+D)) = (dlc+dltt)/(dlc+dltt+csho*prcc_f)                         |
|  dltt_a          |           Long term leverage = dltt/at                                                   |
|  dv_a            |           Dividend ratio = dv/at                                                     |
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



