// 傳入KEY
export default function (KEY) {
  return {
    load () {
      // 獲取KEY，localStorage字串解析成JSON格式，undefined -> null(預設值)
      return JSON.parse(window.localStorage.getItem(KEY) || 'null')
    },
    save (data) {
      // 設定('值', JSON.stringify(data) -> 將資料轉換成字串)
      window.localStorage.setItem(KEY, JSON.stringify(data))
    }
  }
}
