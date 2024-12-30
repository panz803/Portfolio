import { createStore } from 'vuex'

export default createStore({
  state: {
    todos: [] // 預設空
  },
  mutations: {
    // 新增
    addTodo (state, todo) {
      state.todos.push(todo)
    },
    // 移除
    removeTodo (state, todoIndex) {
      state.todos.splice(todoIndex, 1)
    },
    // 完成
    toggleTodo (state, todoIndex) {
      const todo = state.todos[todoIndex]
      todo.completed = !todo.completed // 更新狀態
    },
    // 編輯
    editTodo (state, { index, newText }) {
      const todo = state.todos[index]
      if (todo) {
        todo.text = newText // 更新內容
        todo.editing = false
      }
    },
    // 設置
    setEditing (state, index) {
    // map重設
      state.todos = state.todos.map(todo => {
        todo.editing = false
        return todo
      })
      state.todos[index].editing = true
    }
  },
  actions: {
    // 新增
    addTodo ({ commit }, todo) {
      commit('addTodo', todo)
    },
    // 移除
    removeTodo ({ commit }, todoIndex) {
      commit('removeTodo', todoIndex)
    },
    // 完成
    toggleTodo ({ commit }, todoIndex) {
      commit('toggleTodo', todoIndex)
    },
    // 編輯
    editTodo ({ commit }, payload) {
      commit('editTodo', payload)
    },
    // 設定
    setEditing ({ commit }, index) {
      commit('setEditing', index)
    }
  },
  getters: {
    // 已完成事項
    completedTodos (state) {
      return state.todos.filter(todo => todo.completed)
    },
    // 未完成事項
    pendingTodos (state) {
      return state.todos.filter(todo => !todo.completed)
    }
  }
})
