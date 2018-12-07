from datetime import datetime as dt
from pytz import timezone
import pytz

def utc_to_pst_24(date):
    d = pytz.utc.localize(date)
    pst = d.astimezone(timezone('US/Pacific'))
    parsed_pst = dt.strftime(pst, '%Y-%m-%d %H:%M:%S')
    
    return parsed_pst

def pst_to_12hr(date):
    return dt.strftime(date, '%Y-%m-%d %I:%M %p')

def pst_to_24hr(date):
    return dt.strftime(date, '%Y-%m-%d %H:%M:%S')