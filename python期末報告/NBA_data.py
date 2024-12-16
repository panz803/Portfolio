import matplotlib.pyplot as plt
import seaborn as sns

#資料前處理

#1.資料讀取及概況
import pandas as pd

#2.讀取資料集
data = pd.read_csv('NBA_data.csv')

#3.日期格式處理
data['日期'] = pd.to_datetime(data['日期'])

#4.缺失值處理
data = data.dropna()

#5.解決中文亂碼問題
plt.rcParams['font.sans-serif'] = ['Microsoft JhengHei']

#6.解決負號無法正常顯示問題
plt.rcParams['axes.unicode_minus'] = False




#資料分析

# 1. 上半年所有隊伍總分的分佈分析圖表
plt.figure(figsize=(12, 6))
sns.boxplot(x='隊伍', y='總分', data=data)
plt.title('上半年所有隊伍總得分分佈')
plt.xlabel('隊伍')
plt.ylabel('總得分')

# 統計數據
medians = data.groupby('隊伍')['總分'].median()
print("上半年所有隊伍總得分統計:")
for team, median in medians.items():
    print(f'{team} Median: {median}')

plt.show()




# 2. 比賽次數分析圖表
games_count = data['隊伍'].value_counts()

plt.figure(figsize=(12, 6))
plt.plot(games_count.index, games_count.values, marker='o', color='blue', linestyle='-', linewidth=2)
plt.title('比賽次數分析')
plt.xlabel('隊伍')
plt.ylabel('比賽數')

# 統計數據
print("\n比賽次數分析數據:")
for team, count in games_count.items():
    print(f'{team} Count: {count}')

plt.show()




# 3. 勝率分析
win_rate = data[data['總分'] > data['總分'].median()]['隊伍'].value_counts() / games_count

# 長條圖
plt.figure(figsize=(12, 6))
win_rate.plot(kind='bar', color='green', alpha=0.7)
plt.title('勝率分析 - 長條圖')
plt.xlabel('隊伍')
plt.ylabel('勝率')
plt.show()

# 統計數據
print("\n勝率分析數據:")
for team, rate in win_rate.items():
    print(f'{team} Win Rate: {rate:.2%}')

