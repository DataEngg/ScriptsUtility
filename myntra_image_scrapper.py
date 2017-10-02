import requests
import requests
import pandas as pd
import json

class ImageScrapper(object):

    def __init__(self):
        pass

    def v_neck(self):
        url = "https://www.myntra.com/web/v2/search/data/tshirt?f=Neck_article_attr%3Av-neck&p={0}&rows=48"
        vneck_images = []
        for i in range(1,20):
            t = requests.get(url.format(i))
            json_value = json.loads(t.text)
            for key in json_value['data']['results']['products']:
                for k,i in key.items():
                    if k =='search_image':
                        vneck_images.append((i))
        df = pd.DataFrame(data=vneck_images) 
        df.to_csv("vneck_links.csv")

    def round_neck(self):
        url = "https://www.myntra.com/web/v2/search/data/tshirt?f=Neck_article_attr%3Around%20neck&p={0}&rows=48"
        rneck_images = []
        for i in range(1,20):
            t = requests.get(url.format(i))
            json_value = json.loads(t.text)
            for key in json_value['data']['results']['products']:
                for k,i in key.items():
                    if k =='search_image':
                        rneck_images.append((i))
        df = pd.DataFrame(data=rneck_images) 
        df.to_csv("rneck_links.csv")

if __name__ == '__main__':
    ims = ImageScrapper()
    ims.v_neck()
    #ims.round_neck()
