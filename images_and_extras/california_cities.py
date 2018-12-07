
# coding: utf-8

# In[25]:


from requests_html import HTMLSession


# In[16]:


def text(x):
    """ 
    Deletes all '\n' instances in HTML text to clean it up. Requires parsed HTML.
    """
    return x.text.replace('\n','')


# In[30]:


def ca_cities():    
    session = HTMLSession()

    data = session.get("https://en.wikipedia.org/wiki/List_of_cities_and_towns_in_California")
    cities =data.html.find('th')
    city_list = [text(city) for city in cities]

    return city_list[9:-10]

ca_list = ca_cities()
#print(ca_list)
import pickle

with open("ca_list.pkl", "wb") as cities:
    pickle.dump(ca_list, cities)