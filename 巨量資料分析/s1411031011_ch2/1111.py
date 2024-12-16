import requests
import csv
from bs4 import BeautifulSoup

#取得1111網址
URL = 'https://trade.1111.com.tw/company.aspx?cid=192'

#-------------------------------------------------------

def get_web_page(url): #傳入網址，回傳網頁內容
        resp = requests.get(url)
        resp.encoding = 'utf-8' #未設會出現亂碼
        
        if resp.status_code != 200:
            print('Invalid url:',resp.url)
            return None
        else:
            return resp.text
        
#------------------------------------------------------

page = get_web_page(URL) #呼叫自訂方法
#若有回傳網頁
if page:
    #解析網址
    soup = BeautifulSoup(page, 'html.parser')
    
    Datalist = soup.find_all('div','list-all')
    print(len(Datalist)) #檢查找到筆數是否正確
    
    for data in Datalist:    
        print(data.find('h2').text) #公司名稱
        print(data.find('p','text-justify').text) #簡介
        print(data.find('i','fa fa-phone').find_next_sibling().text) #電話
        print(data.find('i','fa fa-map-marker').find_next_sibling().text) #住址
        print()
        
#------------------------------------------------------------------------------
# 寫入 CSV 檔案
    with open('1111.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["公司名稱", "簡介", "電話", "住址"])

        for data in Datalist:
            name = data.find('h2').text
            t = data.find('p', 'text-justify').text
            phone = data.find('i', 'fa fa-phone').find_next_sibling().text
            adress = data.find('i', 'fa fa-map-marker').find_next_sibling().text

            writer.writerow([name.strip(), t.strip(), phone.strip(), adress.strip()])
        