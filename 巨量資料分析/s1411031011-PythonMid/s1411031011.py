import requests
from bs4 import BeautifulSoup
import csv
import json

def get_web_page(url):
    session = requests.Session()
    payload = {
        "from": "/bbs/Japan_Travel/index.html",
        "yes": "yes"
    }
    session.post("https://www.ptt.cc/ask/over18?from=%2Fbbs%2FGossiping%2Findex.html", payload)
    resp = session.get(url)
    
    if resp.status_code != 200: #若取得網頁失敗，顯示Invalid url(無效的網址)
        print('Invalid url:', resp.url)
        return None
    else:
        return resp.text    #若成功，則回傳網頁內容

def get_articles(dom):    #傳入的參數為"目前的網頁"
    soup = BeautifulSoup(dom, 'html.parser')
    #取得上一頁的連結
    paging_div = soup.find('div', 'btn-group btn-group-paging')
    
    prev_url = paging_div.find_all('a')[1]['href']
    
    #取得當月文章
    articles = []   #用來儲存取得的文章
    divs = soup.find_all('div', 'r-ent')
    
    push_count = 0  #給push_count設初始值，避免'UnboundLocalError'錯誤
    
    for d in divs:
        article_date = d.find('div', 'date').text.strip()
        #提取文章月份，日期格視為"MM/DD"
        article_month = int(article_date.split('/')[0])
        
        i = 4
        if article_month == i:  #若發文日期是當月才執行
            #取得推文數
            push_count = 0
            push_str = d.find('div', 'nrec').text
            if push_str:
                try:
                    push_count = int(push_str)  #轉換字串為數字
                except ValueError:
                    #若轉換失敗，可能是'爆'或'x1'...
                    #若不是，不做任何事，push_count保持為0
                    if push_str == '爆':
                        push_count = 99
                    elif push_str.startswith('X'):
                        push_count = -10
        
            #取得文章連結及標題
            if d.find('a'): #有超連結，表示文章存在，未被刪除
                href = d.find('a')['href']  #找出特定標籤('a')並具有特定屬性('href')
                title = d.find('a').text

                author = d.find('div', 'author').text if d.find('div', 'author') else ''
                date = d.find('div', 'date').text if d.find('div', 'date') else ''
                
                
                #articles的資料型態是list, 在list裡加入(append)一個元素(此元素為dict)
                articles.append({
                    '日期': date,
                    '標題': title,
                    '連結': href,
                    '推文數': push_count,
                    '作者': author
                })
    
    return articles, prev_url   #articles"文章資料"，prev_url"上一頁網址"
            

url = 'https://www.ptt.cc'
current_page = get_web_page(url + '/bbs/Japan_Travel/index.html')

if current_page:    #若回傳值不是None，表示成功
    articles = []   #用來儲存全部的當月文章
    
    #目前頁面的當月文章
    #呼叫 get_artcles，回傳兩個值，分別指定給 current_articles 和 prev_url
    current_articles, prev_url = get_articles(current_page)
    
    #若目前有當月文章，則加入 articles，並回到上一頁繼續尋找是否有當月文章
    while current_articles:
        articles += current_articles    #加入 articles
        current_page = get_web_page(url + prev_url)   #取得網址內容
        #尋找是否有當月文章
        current_articles, prev_url = get_articles(current_page)
        
        #存為Json檔
        with open('ptt.json', 'w', encoding = 'utf-8') as f:
            json.dump(articles, f, indent=2, sort_keys = True, ensure_ascii = False)
        
        #存為csv檔
        with open('ptt.csv', 'w', newline='', encoding="UTF-8-sig") as f:
            csvWriter = csv.writer(f)
            #指定欄位名稱
            csvWriter = csv.DictWriter(f, fieldnames = ['日期', '標題', '連結', '推文數', '作者'])
            csvWriter.writeheader() #將欄位名稱寫入
            
            #將資料逐筆寫入csv
            for a in articles:
                print(a)
                csvWriter.writerow(a)