UPDATE stock_quote SET performance_week = replace (performance_week,'%','');
UPDATE stock_quote SET insider_ownership = replace (insider_ownership,'%','');
UPDATE stock_quote SET shares_outstanding = replace(replace(replace(shares_outstanding,'.',''),'B','0000000'),'M','0000');
UPDATE stock_quote SET market_capitalization = replace(replace(replace(market_capitalization,'.',''),'B','0000000'),'M','0000');
UPDATE stock_quote SET insider_transactions_6_month_change_in_insider_ownership = replace (insider_transactions_6_month_change_in_insider_ownership,'%','');
UPDATE stock_quote SET shares_float = replace(replace(replace(shares_float,'.',''),'B','0000000'),'M','0000');
UPDATE stock_quote SET performance_month = replace (performance_month,'%','');
UPDATE stock_quote SET income_ttm = replace(replace(replace(income_ttm,'.',''),'B','0000000'),'M','0000');
UPDATE stock_quote SET institutional_ownership = replace (institutional_ownership,'%','');
UPDATE stock_quote SET short_interest_share = replace (short_interest_share,'%','');
UPDATE stock_quote SET performance_quarter = replace (performance_quarter,'%','');
UPDATE stock_quote SET revenue_ttm = replace(replace(replace(revenue_ttm,'.',''),'B','0000000'),'M','0000');
UPDATE stock_quote SET earnings_per_share_growth_this_year = replace(earnings_per_share_growth_this_year,'%','');
UPDATE stock_quote SET institutional_transactions_3_month_change_in_institutional_ownership = replace(institutional_transactions_3_month_change_in_institutional_ownership,'%','');
UPDATE stock_quote SET performance_half_year = replace(performance_half_year,'%','');
UPDATE stock_quote SET earnings_per_share_growth_next_year = replace(earnings_per_share_growth_next_year,'%','');
UPDATE stock_quote SET return_on_assets_ttm = replace (return_on_assets_ttm,'%','');
UPDATE stock_quote SET performance_year = replace (performance_year,'%','');
UPDATE stock_quote SET long_term_annual_growth_estimate_5_years = replace (long_term_annual_growth_estimate_5_years,'%','');
UPDATE stock_quote SET return_on_equity = replace (return_on_equity,'%','');
UPDATE stock_quote SET performance_year_to_date = replace (performance_year_to_date,'%','');
UPDATE stock_quote SET annual_eps_growth_past_5_years = replace (annual_eps_growth_past_5_years,'%','');
UPDATE stock_quote SET return_on_investment_ttm = replace (return_on_investment_ttm,'%','');
UPDATE stock_quote SET distance_from_52_week_high = replace (distance_from_52_week_high,'%','');
UPDATE stock_quote SET dividend_yield_annual_percentage = replace (dividend_yield_annual_percentage,'%','');
UPDATE stock_quote SET annual_sales_growth_past_5_years = replace (annual_sales_growth_past_5_years,'%','');
UPDATE stock_quote SET gross_margin_ttm = replace (gross_margin_ttm,'%','');
UPDATE stock_quote SET distance_from_52_week_low = replace (distance_from_52_week_low,'%','');
UPDATE stock_quote SET operating_margin_ttm = replace (operating_margin_ttm,'%','');
UPDATE stock_quote SET volatility_week_month = replace (volatility_week_month,'%','');
UPDATE stock_quote SET quarterly_earnings_growth_yoy = replace (quarterly_earnings_growth_yoy,'%','');
UPDATE stock_quote SET net_profit_margin_ttm = replace (net_profit_margin_ttm,'%','');
UPDATE stock_quote SET average_volume_3_month = replace(replace(replace(average_volume_3_month,'.',''),'B','0000000'),'M','0000');
UPDATE stock_quote SET distance_from_20_day_simple_moving_average = replace (distance_from_20_day_simple_moving_average,'%','');
UPDATE stock_quote SET distance_from_50_day_simple_moving_average = replace (distance_from_50_day_simple_moving_average,'%','');
UPDATE stock_quote SET distance_from_200_day_simple_moving_average = replace (distance_from_200_day_simple_moving_average,'%','');
UPDATE stock_quote SET performance_today = replace (performance_today,'%','');
UPDATE stock_quote SET analyst_mean_recommendation_1_buy_5_sell = replace (analyst_mean_recommendation_1_buy_5_sell,'-','');
UPDATE stock_quote SET dividend_payout_ratio_ttm = replace (dividend_payout_ratio_ttm,'-','');
UPDATE stock_quote SET earnings_date = replace (earnings_date,'-','');
UPDATE stock_quote SET major_index_membership = replace (major_index_membership,'-','');
UPDATE stock_quote SET price_to_earnings_ttm = replace (price_to_earnings_ttm,'-','');
UPDATE stock_quote SET market_capitalization = replace (market_capitalization,'-','');
UPDATE stock_quote SET insider_ownership = replace (insider_ownership,'-','');
UPDATE stock_quote SET forward_price_to_earnings_next_fiscal_year = replace (forward_price_to_earnings_next_fiscal_year,'-','');
UPDATE stock_quote SET shares_float = replace (shares_float,'-','');
UPDATE stock_quote SET price_to_earnings_to_growth = replace (price_to_earnings_to_growth,'-','');
UPDATE stock_quote SET institutional_ownership = replace (institutional_ownership,'-','');
UPDATE stock_quote SET short_interest_share = replace (short_interest_share,'-','');
UPDATE stock_quote SET average_volume_3_month = replace(replace(replace(average_volume_3_month,'.',''),'K','000'),'K','000');
UPDATE stock_quote SET full_time_employees = replace (full_time_employees,'-','');
UPDATE stock_quote SET long_term_debt_to_equity_mrq = replace (long_term_debt_to_equity_mrq,'-','');
UPDATE stock_quote SET price_to_sales_ttm = replace (price_to_sales_ttm,'-','');
UPDATE stock_quote SET analyst_mean_price = replace (analyst_mean_price,'-','');
UPDATE stock_quote SET cash_per_share_mrq = replace (cash_per_share_mrq,'-','');
UPDATE stock_quote SET price_to_cash_per_share_mrq = replace (price_to_cash_per_share_mrq,'-','');
UPDATE stock_quote SET dividend_annual = replace (dividend_annual,'-','');
UPDATE stock_quote SET price_to_free_cash_flow_ttm = replace (price_to_free_cash_flow_ttm,'-','');
UPDATE stock_quote SET dividend_yield_annual_percentage = replace (dividend_yield_annual_percentage,'-','');
UPDATE stock_quote SET quick_ratio_mrq = replace (quick_ratio_mrq,'-','');
UPDATE stock_quote SET total_debt_to_equity_mrq = replace (total_debt_to_equity_mrq,'-','');
UPDATE stock_quote SET shares_outstanding = replace (shares_outstanding,'-','');








