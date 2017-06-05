import axios from 'axios';
export default{
  tasks: [
    {id: 1, body: 'Task one'},
    {id: 2, body: 'Task two'}
  ],
  task: {
    body: null
  },
  usedTemplate(){
    return axios.get('/api/templates/used').then(response => Promise.resolve(response.data));
  }

}
