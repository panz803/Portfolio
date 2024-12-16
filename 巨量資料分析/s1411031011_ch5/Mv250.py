# 1411031011、潘芝儀
from bs4 import BeautifulSoup
import requests
import re
import json
import csv
import os
import urllib.request
#-----------------------------------------------------------
def get_web_page(url, key):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'
                        'AppleWebKit/537.36 (KHTML, like Gecko)'
                        'Chrome/85.0.4183.121 Safari/537.36'}
    # 下載Google搜尋結果
    resp = requests.get(start_urls, headers = headers)
    
    if resp.status_code != 200:  # 若取得網頁失敗，則顯示Invaild url(無效的網址)
        print('Invaild url:', resp.url)
        return None
    else:
        return resp.text  # 若成功，則回傳網頁內容
#-----------------------------------------------------------
def saveImg(mList):
    if not os.path.exists("posterImg"): # 檢查路徑是否存在
        os.makedirs("posterImg")
    i = 1
    for m in mList:
        file = str(i)+".jpg"
        print(m['pic'])
        urllib.request.urlretrieve(m['pic'],os.path.join("posterImg", file))
        i += 1
#-----------------------------------------------------------
start_urls = 'https://www.imdb.com/chart/top/?ref_=nv_mv_250'
key = "天氣"

html = get_web_page(start_urls, key)

if html:  # 若回傳值不是None，表示成功
    movie_list = [] # 用來儲存全部的電影
    soup = BeautifulSoup(html, 'html.parser')
    
    rate_list = soup.select('.ipc-metadata-list-summary-item__c')
    
    print(len(rate_list)) # 印出數量
    for i in range(5):
        pic = rate_list[i].find_previous_sibling('div').find('img')['src']

        print(pic)

        href = rate_list[i].select_one('a')['href']

        print(href)

        title = rate_list[i].select_one('a h3').text

        print(title)

        a = rate_list[i].select_one('a') # 更換定位點
        spanList = a.parent.find_next_sibling('div').find_all('span')

        print(spanList)

        year = spanList[0].text
        length = spanList[1].text
        grading = spanList[2].text
        print(year, length, grading)
        
        temp = a.parent.find_next_sibling('span').text

        print(temp)

        pat1 = '\d\.\d' # 利用正規表示式取得評分
        rating = re.match(pat1, temp).group(0)
        print(rating)
        
        mov = '\((.*?)\)'
        ratCount = re.search(mov, temp).group(0)
        ratCount = ratCount.replace('(', '')
        ratCount = ratCount.replace(')', '')
        print(ratCount)
         
         # 將一則資料整理為dictionary
        item = {
                 'title':title,
                 'pic':pic,
                 'href':href,
                 'year':year,
                 'length':length,
                 'grading':grading,
                 'rating':rating,
                 'ratCount':ratCount
             }
        movie_list.append(item) # 將一個dictionary放入list
         
        for item in movie_list: # 印出確認
            print(item['title'])
            print(item['pic'])
            print(item['href'])
            print(item['year'])
            print(item['length'])
            print(item['grading'])
            print(item['rating'])
            print(item['ratCount'])
        
        '''存為Json檔'''
        with open('movie.json', 'w', encoding = 'utf-8') as f:
            json.dump(movie_list, f, indent=2, sort_keys = True, ensure_ascii = False)
            
        '''存為csv檔'''
        f = open('movie.csv', 'w', newline='')
        csvWriter = csv.DictWriter(f, fieldnames = ['title', 'pic', 'href', 'year', 'length', 'grading', 'rating', 'ratCount']) # 指定欄位名稱
        csvWriter.writeheader() # 將欄位名稱寫入
    
        for movie in movie_list:
            csvWriter.writerow(movie)
        f.close()
    
        '''將圖片存檔'''
        saveImg(movie_list)        

        