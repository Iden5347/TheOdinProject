const container = document.querySelector('#container');

const red_p = document.createElement('p');
red_p.style.color = 'red';
red_p.textContent = 'Hey I\'m red!';

container.appendChild(red_p);

const blue_h3 = document.createElement('h3');
blue_h3.style.color = 'blue';
blue_h3.textContent = 'I\'m a blue h3!';

container.appendChild(blue_h3);

const second_container = document.createElement('div');
const norm_h1 = document.createElement('h1');
norm_h1.textContent = "I'm a div";
const norm_p = document.createElement('p');
norm_p.textContent = "ME TOO!";
second_container.appendChild(norm_h1);
second_container.appendChild(norm_p);

container.appendChild(second_container);

const btn = document.querySelector('#btn');
btn.addEventListener('click', (e) => {
    //alert("e.target.style.background");
    e.target.style.background = 'blue';
})