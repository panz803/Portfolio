import requests
from bs4 import BeautifulSoup
import os
import re
import urllib.request
import csv

def get_web_page(url):
    session = requests.Session()
    payload = {
        "from": "/bbs/Gossiping/index.html",
        "yes": "yes"
    }
    session.post("https://www.ptt.cc/ask/over18?from=%2Fbbs%2FGossiping%2Findex.html", payload)
    resp = session.get(
        url=url,
        cookies={'over18': '1'}
    )
    if resp.status_code != 200:
        print('Invalid url:', resp.url)
        return None
    else:
        return resp.text
    
def get_articles(dom, date):
    soup = BeautifulSoup(dom, 'html.parser')
    
    articles = []
    divs = soup.find_all('div', 'r-ent')
    for d in divs:
        if d.find('div', 'date').text.strip() == date:
            # 取得推文數
            push_count = 0
            push_str = d.find('div', 'nrec').text
            if push_str:
                try:
                    push_count = int(push_str)
                except ValueError:
                    if push_str == '爆':
                        push_count = 99
                    elif push_str.startswith('X'):
                        push_count = -10
            if d.find('a'):
                href = d.find('a')['href']
                title = d.find('a').text
                author = d.find('div', 'author').text if d.find('div', 'author') else ''
                articles.append({
                    'title': title,
                    'href': href,
                    'push_count': push_count,
                    'author': author
                })
    return articles

def parse_img_urls(soup):
    img_urls = []
    for a in soup.find_all('a'):
        href = a.get('href')
        if href and re.match(r'^https?://(i.)?(m.)?imgur.com', href):
            img_urls.append(href)
    return img_urls

def save(img_urls, title):
    if img_urls:
        try:
            title = title.replace("/", "-")
            dname = title.strip()
            os.makedirs(dname)
            for img_url in img_urls:
                print("img_url_1", img_url)
                if img_url.split('//')[1].startswith('m.'):
                    img_url = img_url.replace('//m.', '//i.')
                if not img_url.split('//')[1].startswith('i.'):
                    img_url = img_url.split('//')[0] + img_url.split('//')[1]
                if not img_url.endswith('.jpg'):
                    img_url += '.jpg'
                print("img_url_2",img_url)
                fname = img_url.split('/')[-1]
                urllib.request.urlretrieve(img_url, os.path.join(dname, fname))
        except Exception as e:
            print(e)

if __name__ == '__main__':
    url = 'https://www.ptt.cc/bbs/Lifeismoney/M.1710136627.A.48E.html'
    current_page = get_web_page(url)

    if current_page:
        soup = BeautifulSoup(current_page, 'html.parser')
        
        # 標題
        title = soup.find('title').text.strip()
        
        # 日期
        date_elements = soup.find_all('span', class_='article-meta-value')
        date = date_elements[3].text.strip() if len(date_elements) > 3 else ''
        
        # 推文數
        push_elements = soup.find_all('span', class_='hl f1')
        push_count = push_elements[0].text.strip() if len(push_elements) > 0 else ''
        
        # 作者
        author_elements = soup.find_all('span', class_='article-meta-value')
        author = author_elements[0].text.strip() if len(author_elements) > 0 else ''
        
        # 圖片
        img_urls = parse_img_urls(soup)
        save(img_urls, title)

        with open('PTT_Lifeismoney.csv', 'w', newline='', encoding="UTF-8-sig") as f:
            csvWriter = csv.writer(f)
            csvWriter.writerow(['標題', '連結', '日期', '推文數', '作者'])
            csvWriter.writerow([title, url, date, push_count, author])
        f.close()