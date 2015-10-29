
window.onload = function() {

// the following code adds event listeners to the buttons
// you'll learn more about this later
// for this exercise, you are going to write the functions for
// what happens when the user clicks on the buttons.
  var saveButton = document.getElementById('save-button');
  saveButton.addEventListener('click', addToDoItem, false);

  var doneButton = document.getElementById('done-button');
  doneButton.addEventListener('click', markAsDone, false);


  function addToDoItem() {
    // add your code here
    // this should create a new list item in the to-do list
    // and set the text as the input from the todo-input field
    
    //select value of new task
    var newTagValue = document.getElementById('todo-input').value;
    // select place to add task
    var placeToAddTask = document.querySelector('.todo-list-items');
    // create new task with the value
    var createTag = document.createElement('li');
    createTag.textContent = newTagValue;
    placeToAddTask.appendChild(createTag);
    // clean todo-input ???

  }

  function markAsDone() {
    doneButton.classList.add('liked');
    doneButton.innerHTML = "Liked!";
    document.querySelector('h1').style.color = "red";

    // select the first task and remove from the todo-list-items
    var todoListItems = document.querySelector('.todo-list-items');
    var firstTask = todoListItems.getElementsByTagName('li')[0];
    //firstTask.remove();
    // add the task to done-list-items
    var doneListItems = document.querySelector('.done-list-items');
    var firstTaskDone = doneListItems.getElementsByTagName('li')[0];
    firstTaskDone.parentNode.insertBefore(firstTask, firstTaskDone);
    doneListItems.getElementsByTagName('li')[0].classList.add('done');
  }
  
}
