<template>
  <div id="app">
    <h1>to-do-list</h1>
    <!-- 輸入框：@keyup.enter；按鈕：@click -->
    <input v-model="newTodo" @keyup.enter="addTodo" placeholder="請輸入代辦事項" />

    <ul class="todo-list">
      <!-- 顯示每個事項 -->
      <li v-for="(todo, index) in todos" :key="index" class="todo-item">
        <!-- checkbox -> todo.completed -->
        <input type="checkbox" v-model="todo.completed" />
        <!-- completed + 刪除線 -->
        <span :class="{ completed: todo.completed }" class="todo-text">
          {{ todo.text }}
        </span>
        <!-- 編輯 -->
        <button @click="editTodo(index)" class="edit-btn">編輯</button>
        <!-- 移除 -->
        <button @click="removeTodo(index)" class="remove-btn">移除</button>
      </li>
    </ul>

    <h2>已完成的事項</h2>
    <ul class="completed-list">
      <li v-for="(todo, index) in completedTodos" :key="index" class="todo-item completed-item">
        {{ todo.text }}
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data () {
    return {
      newTodo: '' // 用來綁定新代辦事項輸入框的變數
    }
  },
  computed: {
    // store -> 所有代辦事項
    todos () {
      return this.$store.state.todos
    },
    // 計算已完成的代辦事項，根據 completed 狀態篩選
    completedTodos () {
      return this.$store.getters.completedTodos
    }
  },
  methods: {
    // 新增
    addTodo () {
      if (this.newTodo.trim()) {
        this.$store.dispatch('addTodo', { text: this.newTodo, completed: false })
        this.newTodo = '' // 清空
      }
    },
    // 移除
    removeTodo (index) {
      this.$store.dispatch('removeTodo', index)
    },
    // 編輯
    editTodo (index) {
    // 傳index和新內容給store
      const newText = prompt('請輸入新的代辦事項', this.todos[index].text)
      if (newText !== null) {
        this.$store.dispatch('editTodo', { index, newText })
      }
    }
  }
}
</script>

<style scoped>
* {
  box-sizing: border-box;
}

#app {
  max-width: 600px;
  margin: 40px auto;
  padding: 20px;
  background: #fff;
  border-radius: 10px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
  text-align: center;
  color: brown;
  font-size: 50px;
}

.todo-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  border-bottom: 1px solid #eee;
  transition: background-color 0.3s ease;
}

input[type="checkbox"] {
  margin-right: 15px;
  cursor: pointer;
}

.todo-text {
  cursor: pointer;
  font-size: 1.1rem;
  transition: color 0.3s ease;
}

.todo-text.completed {
  text-decoration: line-through; /* 刪除線 */
  color: #888;
}

.edit-btn {
  background-color: green;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 5px 10px;
  cursor: pointer;
  font-size: 0.9rem;
  transition: background-color 0.3s ease;
}

.edit-btn:hover {
  background-color: #45a049;
}

.remove-btn {
  background-color: red;
  color: white;
  border: none;
  border-radius: 5px;
  padding: 5px 10px;
  cursor: pointer;
  font-size: 15px;
}

.remove-btn:hover {
  background-color: #D04B2A;
}

h2 {
  color: #333;
  font-size: 25px;
  font-weight: bold;
  margin-top: 20px;
  text-align: center;
}

.completed-item {
  font-size: 20px;
  color: #888;
  padding: 8px;
  border-bottom: 1px solid #eee;
}

.completed-item:last-child {
  border-bottom: none;
}
</style>
